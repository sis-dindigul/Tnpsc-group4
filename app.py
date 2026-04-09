from flask import Flask, render_template, request, redirect, session, url_for, flash,send_from_directory,send_file
import datetime, math, random, os
from reportlab.platypus import SimpleDocTemplate, Paragraph, Spacer
from reportlab.lib.styles import getSampleStyleSheet
from werkzeug.utils import secure_filename
import datetime
from flask_mysqldb import MySQL
import MySQLdb.cursors
import matplotlib
matplotlib.use('Agg')
import random
import math
import datetime
from werkzeug.security import generate_password_hash
from werkzeug.security import check_password_hash
import matplotlib.pyplot as plt
import os
app = Flask(__name__)
#pip install werkzeug
# -------------------------
# SECRET KEY
# -------------------------
app.secret_key = 'your_secret_key'

# -------------------------
# MYSQL CONFIGURATION
# -------------------------
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'tnpsc_group4'

mysql = MySQL(app)

UPLOAD_FOLDER = "static/uploads"
RESULT_FOLDER = "static/results"

app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER



full_plan_global = []
# -------------------------
# HOME PAGE
# -------------------------
@app.route('/')
def index():
    return render_template("index.html")


# -------------------------
# ADMIN LOGIN
# -------------------------
@app.route('/admin', methods=['GET','POST'])
def admin():

    if request.method == "POST":

        username = request.form['username']
        password = request.form['password']

        cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)

        cur.execute("SELECT * FROM admin WHERE username=%s AND password=%s",
                    (username,password))

        data = cur.fetchone()

        if data:
            session['admin'] = data['username']
            flash('Admin Login Successfully!')
            return redirect(url_for('admin_dashboard'))
        
    return render_template("admin_login.html")

# -------------------------
# STUDENT REGISTER
# -------------------------
from werkzeug.security import generate_password_hash

@app.route('/register', methods=['GET','POST'])
def register():

    if request.method == "POST":

        name = request.form['name']
        email = request.form['email']
        password = request.form['password']

        # ✅ Simple hash (no need to specify method)
        hashed_password = generate_password_hash(password)

        cur = mysql.connection.cursor()
        cur.execute(
            "INSERT INTO students(name,email,password) VALUES(%s,%s,%s)",
            (name, email, hashed_password)
        )
        mysql.connection.commit()

        flash("Registered Successfully!")
        return redirect(url_for('student'))

    return render_template("register.html")

# -------------------------
# STUDENT LOGIN
# -------------------------
from werkzeug.security import check_password_hash

@app.route('/student', methods=['GET','POST'])
def student():

    if request.method == "POST":

        email = request.form['email']
        password = request.form['password']

        cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cur.execute("SELECT * FROM students WHERE email=%s", (email,))
        user = cur.fetchone()

        if user and check_password_hash(user['password'], password):
            session['student'] = user['id']
            flash("Login Success")
            return redirect(url_for('student_dashboard'))
        else:
            flash("Invalid Email or Password")

    return render_template("student_login.html")

# -------------------------
# ADMIN DASHBOARD
# -------------------------

# -------------------------
# SYLLABUS VIEW
# -------------------------
from collections import defaultdict

@app.route('/admin_dashboard')
def admin_dashboard():

    cur = mysql.connection.cursor()
    cur.execute("SELECT subject, topic, subtopic FROM syllabus")
    rows = cur.fetchall()

    syllabus = defaultdict(lambda: defaultdict(list))

    for subject, topic, subtopic in rows:
        syllabus[subject][topic].append(subtopic)

    return render_template("admin_dashboard/admin_dashboard.html", syllabus=syllabus)


@app.route('/admin_dashboard/add_materials', methods=['GET','POST'])
def add_materials():

    if 'admin' not in session:
        return redirect(url_for('admin'))

    if request.method == "POST":

        material_name = request.form['material_name']
        file = request.files['file']

        filename = secure_filename(file.filename)
        filepath = os.path.join(app.config['UPLOAD_FOLDER'], filename)

        file.save(filepath)

        cur = mysql.connection.cursor()

        cur.execute("""
        INSERT INTO materials
        VALUES(Null,%s,%s)
        """,(material_name, filename))

        mysql.connection.commit()

        flash('Material Uploaded Successfully!')
        return redirect(url_for('add_materials'))

    return render_template("admin_dashboard/add_materials.html")




@app.route('/admin_dashboard/add_questionpaper', methods=['GET','POST'])
def add_questionpaper():

    if 'admin' not in session:
        return redirect(url_for('admin'))

    if request.method == "POST":

        question_name = request.form['question']
        file = request.files['file']

        filename = secure_filename(file.filename)
        filepath = os.path.join(app.config['UPLOAD_FOLDER'], filename)

        file.save(filepath)

        cur = mysql.connection.cursor()

        cur.execute("""
        INSERT INTO questionpaper
        VALUES(Null,%s,%s)
        """,(question_name, filename))

        mysql.connection.commit()

        flash('TNPSC Question Uploaded Successfully!')
        return redirect(url_for('add_materials'))

    return render_template("admin_dashboard/add_materials.html")


@app.route('/admin_dashboard/add_question', methods=['GET','POST'])
def add_question():

    if 'admin' not in session:
        return redirect(url_for('admin'))

    cur = mysql.connection.cursor()

    # 🔹 Get all subjects for dropdown
    cur.execute("SELECT DISTINCT subject FROM syllabus")
    subjects = cur.fetchall()
    
    
    cur.execute("SELECT DISTINCT topic FROM syllabus")
    topic = cur.fetchall()
    
    if request.method == "POST":
        subject = request.form['subject']
        topics = request.form['topics']
        question = request.form['question']
        option1 = request.form['option1']
        option2 = request.form['option2']
        option3 = request.form['option3']
        option4 = request.form['option4']
        selected = request.form['answer']   # 1,2,3,4

        # 🔥 Convert selected option number → actual value
        if selected == "1":
            answer = option1
        elif selected == "2":
            answer = option2
        elif selected == "3":
            answer = option3
        elif selected == "4":
            answer = option4

        cur = mysql.connection.cursor()

        cur.execute("""
        INSERT INTO questions(subject,topic,question,option1,option2,option3,option4,answer)
        VALUES(%s,%s,%s,%s,%s,%s,%s,%s)
        """,(subject,topics,question,option1,option2,option3,option4,answer))

        mysql.connection.commit()
        flash('Inserted Successfully!')
        return redirect(url_for('add_question'))

    return render_template("admin_dashboard/add_question.html",subjects=subjects,topic=topic)

@app.route('/admin_dashboard/view_questions')
def view_questions():

    if 'admin' not in session:
        return redirect('/admin')

    cur = mysql.connection.cursor()

    cur.execute("SELECT * FROM questions")

    data = cur.fetchall()

    return render_template("admin_dashboard/view_questions.html",questions=data)

@app.route('/admin_dashboard/edit_question/<id>', methods=['GET','POST'])
def edit_question(id):

    cur = mysql.connection.cursor()

    # 🔹 Get all subjects for dropdown
    cur.execute("SELECT DISTINCT subject FROM syllabus")
    subjects = cur.fetchall()
    
    
    cur.execute("SELECT DISTINCT topic FROM syllabus")
    topic = cur.fetchall()
    
    if request.method == "POST":
        subject = request.form['subject']
        topics = request.form['topics']
        question = request.form['question']
        option1 = request.form['option1']
        option2 = request.form['option2']
        option3 = request.form['option3']
        option4 = request.form['option4']
        selected = request.form['answer']   # 1,2,3,4

        # 🔥 Convert selected option number → actual value
        if selected == "1":
            answer = option1
        elif selected == "2":
            answer = option2
        elif selected == "3":
            answer = option3
        elif selected == "4":
            answer = option4

        cur.execute("""
        UPDATE questions
        SET subject=%s,topic=%s,question=%s,option1=%s,option2=%s,option3=%s,option4=%s,answer=%s
        WHERE id=%s
        """,(subject,topics,question,option1,option2,option3,option4,answer,id))

        mysql.connection.commit()
        flash('Edited Successfully!')
        return redirect(url_for('view_questions'))

    cur.execute("SELECT * FROM questions WHERE id=%s",(id,))

    data = cur.fetchone()

    return render_template("admin_dashboard/edit_question.html",data=data,subjects=subjects,topic=topic)


@app.route('/admin_dashboard/delete_question/<id>')
def delete_question(id):

    cur = mysql.connection.cursor()

    cur.execute("DELETE FROM questions WHERE id=%s",(id,))

    mysql.connection.commit()
    flash('Deleted Successfully!')
    return redirect(url_for('view_questions'))

@app.route('/admin_dashboard/user_report')
def user_report():

    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)

    cur.execute("SELECT * FROM students")

    account = cur.fetchall()

    return render_template("admin_dashboard/user_report.html", account=account)


# -------------------------
# STUDENT DASHBOARD
# -------------------------



# -------------------------
# STUDY PLAN GENERATOR
# -------------------------


@app.route('/student_dashboard', methods=['GET','POST'])
def student_dashboard():

    global full_plan_global

    cur = mysql.connection.cursor()

    # 🔹 Get all subjects
    cur.execute("SELECT DISTINCT subject FROM syllabus")
    all_subjects = [row[0] for row in cur.fetchall()]

    full_plan = []
    today = datetime.date.today()

    if request.method == "POST":

        # ✅ FIXED DATE CONVERSION
        tnpsc_exam_date = datetime.datetime.strptime(
            request.form['date'], "%Y-%m-%d"
        ).date()

        days = (tnpsc_exam_date - today).days
        if days <= 0:
            days = 1

        # 🔹 Get all subjects topics
        subject_data = {}

        for sub in all_subjects:
            cur.execute("""
                SELECT topic, subtopic 
                FROM syllabus 
                WHERE subject=%s
            """, (sub,))

            topics = [
                f"{row[0]} - {row[1]}" if row[1] else row[0]
                for row in cur.fetchall()
            ]

            random.shuffle(topics)
            subject_data[sub] = topics

        subject_index = {sub: 0 for sub in all_subjects}

        weeks = math.ceil(days / 7)
        day_count = 0

        for w in range(weeks):

            week_data = {"week": w+1, "days": []}

            for d in range(7):

                current_date = today + datetime.timedelta(days=day_count)

                # ✅ STOP AFTER SELECTED DATE
                if current_date > tnpsc_exam_date:
                    break

                # ✅ LAST DAY MOCK TEST
                if d == 6:
                    day_plan = {
                        "date": str(current_date),
                        "schedule": ["Mock Test"]
                    }

                else:
                    daily_tasks = []

                    for sub in all_subjects:
                        topics = subject_data[sub]
                        idx = subject_index[sub]

                        if idx < len(topics):
                            task = f"{sub}: {topics[idx]}"
                            subject_index[sub] += 1
                        else:
                            task = f"{sub}: Revision"

                        daily_tasks.append(task)

                    day_plan = {
                        "date": str(current_date),
                        "schedule": daily_tasks
                    }

                week_data["days"].append(day_plan)
                day_count += 1

            full_plan.append(week_data)

        full_plan_global = full_plan

        return render_template(
            "student_dashboard/student_dashboard.html",
            full_plan=full_plan,
            subjects=all_subjects
        )

    return render_template(
        "student_dashboard/student_dashboard.html",
        full_plan=[],
        subjects=all_subjects
    )
    
    
# ✅ PDF DOWNLOAD ROUTE
@app.route('/download_pdf')
def download_pdf():

    global full_plan_global

    file_path = "study_plan.pdf"

    doc = SimpleDocTemplate(file_path)
    styles = getSampleStyleSheet()
    content = []

    for week in full_plan_global:

        content.append(Paragraph(f"Week {week['week']}", styles['Heading2']))
        content.append(Spacer(1, 10))

        for day in week["days"]:

            content.append(Paragraph(f"Date: {day['date']}", styles['Normal']))

            for task in day["schedule"]:
                content.append(Paragraph(f"- {task}", styles['Normal']))

            content.append(Spacer(1, 10))

    doc.build(content)

    return send_file(file_path, as_attachment=True)




@app.route('/student_dashboard/materials')
def materials():

    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)

    cur.execute("SELECT * FROM materials")

    account = cur.fetchall()
    
    cur.execute("SELECT * FROM questionpaper")

    account1 = cur.fetchall()

    return render_template("student_dashboard/materials.html", account=account,account1=account1)


@app.route('/view/<filename>')
def view_file(filename):
    return send_from_directory(UPLOAD_FOLDER, filename)

@app.route('/download_syllabus')
def download_syllabus():
    return send_file("static/files/tnpsc_syllabus.pdf", as_attachment=True)

@app.route('/view_syllabus')
def view_syllabus():
    return send_file("static/files/tnpsc_syllabus.pdf", as_attachment=False)

@app.route('/download/<filename>')
def download_file(filename):

    return send_from_directory(app.config['UPLOAD_FOLDER'],filename,as_attachment=True)
# -------------------------
# MOCK TEST
# -------------------------
@app.route('/student_dashboard/mock_test', methods=['GET', 'POST'])
def mock_test():

    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)

    # 🔹 Get all subjects for dropdown
    cur.execute("SELECT DISTINCT subject FROM questions")
    subjects = cur.fetchall()

    questions = []

    if request.method == "POST":
        selected_subject = request.form['subject']

        # 🔹 Random 25 questions from selected subject
        cur.execute("""
            SELECT * FROM questions 
            WHERE subject=%s 
            ORDER BY RAND() 
            LIMIT 25
        """, (selected_subject,))

        questions = cur.fetchall()

    return render_template(
        "student_dashboard/mock_test.html",
        subjects=subjects,
        questions=questions
    )


# -------------------------
# SUBMIT TEST
# -------------------------
import datetime

@app.route('/student_dashboard/submit_test', methods=['POST'])
def submit_test():

    score = 0
    result_data = []

    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)

    question_ids = request.form.getlist("question_ids")

    for qid in question_ids:

        cur.execute("SELECT * FROM questions WHERE id=%s", (qid,))
        q = cur.fetchone()

        user_answer = request.form.get(qid)
        correct_answer = q['answer']

        if user_answer == correct_answer:
            score += 1
            status = "Correct"
        else:
            status = "Wrong"

        result_data.append({
            "question": q['question'],
            "user_answer": user_answer,
            "correct_answer": correct_answer,
            "status": status
        })

    student = session['student']

    # ✅ Get current date & time
    now = datetime.datetime.now()
    test_date = now.date()
    time_taken = float(request.form.get("time_taken"))


    cur.execute(
        "INSERT INTO results(student_id, score, test_date, time_taken) VALUES (%s,%s,%s,%s)",
        (student, score, test_date, time_taken)
    )

    mysql.connection.commit()

    return render_template(
        "student_dashboard/result.html",
        score=score,
        result_data=result_data
    )

@app.route('/student_dashboard/performance')
def performance():

    if 'student' not in session:
        return redirect('/student')

    student = session['student']

    cur = mysql.connection.cursor()

    cur.execute("SELECT score,test_date,time_taken FROM results WHERE student_id=%s",(student,))

    data = cur.fetchall()

    scores = []
    percentages = []
    dates = []
    status = []

    for row in data:

        score = row[0]
        percent = (score / 25) * 100
        time_taken = float(row[2]) if row[2] else 10

        scores.append(score)
        percentages.append(percent)
        dates.append(str(row[1]))

        # 🔥 COMBINED LOGIC (Accuracy + Speed)

        if percent >= 80 and time_taken <= 6:
            status.append("🔥 Excellent (Fast & Accurate)")

        elif percent >= 80 and time_taken > 6:
            status.append("✅ Excellent (Accurate but Slow)")

        elif percent >= 60 and time_taken <= 7:
            status.append("👍 Good (Fast)")

        elif percent >= 60:
            status.append("👍 Good")

        elif percent >= 40 and time_taken <= 6:
            status.append("⚡ Average (Fast but needs accuracy)")

        elif percent >= 40:
            status.append("⚠ Average")

        else:
            if time_taken <= 6:
                status.append("❗ Fast but Incorrect")
            else:
                status.append("❌ Need Improvement")
            



    return render_template(
        "student_dashboard/performance.html",
        data=data,
        percentages=percentages,
        status=status,
        
    )








# -------------------------
# RUN APPLICATION
# -------------------------
if __name__ == "__main__":
    app.run(debug=True)