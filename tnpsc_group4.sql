-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2026 at 12:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tnpsc_group4`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` int(11) NOT NULL,
  `material_name` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `material_name`, `file`) VALUES
(1, '2014-GK-Tamil', '2014-GK-Tamil.pdf'),
(2, '2011-General-Knowledge-with-General-Tamil-VAO', '2011-General-Knowledge-with-General-Tamil-VAO.pdf'),
(3, '2024-General-English-and-General-Studies', '2024-General-English-and-General-Studies.pdf'),
(4, 'General-Studies-English', 'General-Studies-English.pdf'),
(5, 'General-Studies-Tamil', 'General-Studies-Tamil.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `questionpaper`
--

CREATE TABLE `questionpaper` (
  `id` int(11) NOT NULL,
  `question_name` varchar(50) NOT NULL,
  `filename` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questionpaper`
--

INSERT INTO `questionpaper` (`id`, `question_name`, `filename`) VALUES
(1, '10 years tnpsc question paper', 'tnpsc_group4_previous_10_years_questions.pdf'),
(2, 'tnpsc group4 500 Questions', 'tnpsc_group4_500_questions.pdf'),
(3, 'tnpsc_group4_1000_tamil_grammar_questions', 'tnpsc_group4_1000_tamil_grammar_questions.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `topic` varchar(100) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `subject`, `topic`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(1, 'General Tamil / General English', 'Grammar', 'Identify the noun in the sentence: \"Ravi is playing cricket.\"', 'Ravi', 'playing', 'cricket', 'is', 'Ravi'),
(2, 'General Tamil / General English', 'Grammar', 'Choose the correct verb form: She ___ to school daily.', 'go', 'goes', 'going', 'gone', 'goes'),
(3, 'General Tamil / General English', 'Grammar', 'Which is an adjective?', 'Quickly', 'Happiness', 'Beautiful', 'Run', 'Beautiful'),
(4, 'General Tamil / General English', 'Grammar', 'Choose correct tense: I ___ my homework yesterday.', 'do', 'did', 'done', 'doing', 'did'),
(5, 'General Tamil / General English', 'Grammar', 'Fill in the article: ___ apple a day keeps doctor away.', 'A', 'An', 'The', 'No article', 'An'),
(6, 'General Tamil / General English', 'Grammar', 'Plural form of \"child\" is?', 'childs', 'children', 'childes', 'childrens', 'children'),
(7, 'General Tamil / General English', 'Grammar', 'Past tense of \"go\" is?', 'goed', 'went', 'gone', 'going', 'went'),
(8, 'General Tamil / General English', 'Grammar', 'Identify pronoun: Ram lost ___ book.', 'his', 'book', 'lost', 'Ram', 'his'),
(9, 'General Tamil / General English', 'Grammar', 'Which is a conjunction?', 'and', 'run', 'quick', 'blue', 'and'),
(10, 'General Tamil / General English', 'Grammar', 'Choose correct sentence:', 'He go to school', 'He goes to school', 'He going school', 'He gone school', 'He goes to school'),
(11, 'General Tamil / General English', 'Grammar', 'Identify the verb: She sings beautifully.', 'she', 'sings', 'beautifully', 'none', 'sings'),
(12, 'General Tamil / General English', 'Grammar', 'Choose the correct plural form of \"mouse\".', 'mouses', 'mice', 'mouse', 'mices', 'mice'),
(13, 'General Tamil / General English', 'Grammar', 'Fill in the blank: He ___ playing football.', 'is', 'are', 'am', 'were', 'is'),
(14, 'General Tamil / General English', 'Grammar', 'Identify the adjective: The red car is fast.', 'car', 'red', 'fast', 'is', 'red'),
(15, 'General Tamil / General English', 'Grammar', 'Choose correct tense: They ___ watching TV now.', 'is', 'am', 'are', 'was', 'are'),
(16, 'General Tamil / General English', 'Grammar', 'Which is a preposition?', 'on', 'run', 'happy', 'quick', 'on'),
(17, 'General Tamil / General English', 'Grammar', 'Past tense of \"eat\" is?', 'eated', 'ate', 'eaten', 'eats', 'ate'),
(18, 'General Tamil / General English', 'Grammar', 'Fill in the blank: She is ___ honest girl.', 'a', 'an', 'the', 'no article', 'an'),
(19, 'General Tamil / General English', 'Grammar', 'Identify adverb: He runs quickly.', 'runs', 'quickly', 'he', 'none', 'quickly'),
(20, 'General Tamil / General English', 'Grammar', 'Choose correct sentence:', 'She do homework', 'She does homework', 'She doing homework', 'She done homework', 'She does homework'),
(21, 'General Tamil / General English', 'Grammar', 'Opposite of \"happy\" is?', 'sad', 'joy', 'good', 'nice', 'sad'),
(22, 'General Tamil / General English', 'Grammar', 'Choose correct pronoun: This book is ___', 'my', 'mine', 'me', 'I', 'mine'),
(23, 'General Tamil / General English', 'Grammar', 'Fill in the blank: They ___ gone to school.', 'has', 'have', 'had', 'is', 'have'),
(24, 'General Tamil / General English', 'Grammar', 'Which is an interjection?', 'Wow!', 'Run', 'Blue', 'Happy', 'Wow!'),
(25, 'General Tamil / General English', 'Grammar', 'Choose correct tense: I ___ a letter now.', 'write', 'am writing', 'wrote', 'written', 'am writing'),
(26, 'General Tamil / General English', 'Grammar', 'Identify noun: The dog barked loudly.', 'dog', 'barked', 'loudly', 'none', 'dog'),
(27, 'General Tamil / General English', 'Grammar', 'Fill in the blank: He ___ a teacher.', 'is', 'are', 'am', 'be', 'is'),
(28, 'General Tamil / General English', 'Grammar', 'Choose correct article: ___ sun rises in east.', 'A', 'An', 'The', 'No article', 'The'),
(29, 'General Tamil / General English', 'Grammar', 'Which is a synonym of \"big\"?', 'large', 'small', 'tiny', 'short', 'large'),
(30, 'General Tamil / General English', 'Grammar', 'Choose correct verb: They ___ playing.', 'is', 'are', 'am', 'was', 'are'),
(31, 'General Tamil / General English', 'Grammar', 'Past tense of \"see\" is?', 'saw', 'seen', 'seeing', 'sees', 'saw'),
(32, 'General Tamil / General English', 'Grammar', 'Identify adjective: She has a beautiful dress.', 'she', 'has', 'beautiful', 'dress', 'beautiful'),
(33, 'General Tamil / General English', 'Grammar', 'Fill in the blank: We ___ friends.', 'is', 'are', 'am', 'was', 'are'),
(34, 'General Tamil / General English', 'Grammar', 'Choose correct pronoun: ___ is my friend.', 'He', 'Him', 'His', 'Me', 'He'),
(35, 'General Tamil / General English', 'Grammar', 'Which is antonym of \"fast\"?', 'slow', 'quick', 'rapid', 'speed', 'slow'),
(36, 'General Tamil / General English', 'Grammar', 'Fill in the blank: I have ___ book.', 'a', 'an', 'the', 'no article', 'a'),
(37, 'General Tamil / General English', 'Grammar', 'Choose correct tense: She ___ finished work.', 'has', 'have', 'had', 'is', 'has'),
(38, 'General Tamil / General English', 'Grammar', 'Identify verb: Birds fly in sky.', 'birds', 'fly', 'sky', 'in', 'fly'),
(39, 'General Tamil / General English', 'Grammar', 'Plural of \"foot\" is?', 'foots', 'feet', 'footes', 'footes', 'feet'),
(40, 'General Tamil / General English', 'Grammar', 'Choose correct sentence:', 'I is student', 'I am student', 'I are student', 'I be student', 'I am student'),
(41, 'General Tamil / General English', 'Grammar', 'Fill in the blank: He ___ eating.', 'is', 'are', 'am', 'be', 'is'),
(42, 'General Tamil / General English', 'Grammar', 'Which is a conjunction?', 'but', 'run', 'fast', 'blue', 'but'),
(43, 'General Tamil / General English', 'Grammar', 'Past tense of \"write\" is?', 'writed', 'wrote', 'written', 'writes', 'wrote'),
(44, 'General Tamil / General English', 'Grammar', 'Identify adverb: She speaks softly.', 'she', 'speaks', 'softly', 'none', 'softly'),
(45, 'General Tamil / General English', 'Grammar', 'Choose correct pronoun: Give it to ___', 'me', 'I', 'mine', 'we', 'me'),
(46, 'General Tamil / General English', 'Grammar', 'Fill in the blank: They ___ coming.', 'is', 'are', 'am', 'was', 'are'),
(47, 'General Tamil / General English', 'Grammar', 'Choose correct article: ___ elephant is big.', 'A', 'An', 'The', 'No article', 'An'),
(48, 'General Tamil / General English', 'Grammar', 'Identify noun: The sun shines brightly.', 'sun', 'shines', 'brightly', 'none', 'sun'),
(49, 'General Tamil / General English', 'Grammar', 'Choose correct tense: We ___ dinner.', 'have', 'has', 'had', 'is', 'have'),
(50, 'General Tamil / General English', 'Grammar', 'Which is synonym of \"smart\"?', 'intelligent', 'dull', 'slow', 'weak', 'intelligent'),
(51, 'General Tamil / General English', 'Literature', 'Who is the author of \"Pride and Prejudice\"?', 'Jane Austen', 'Charles Dickens', 'Shakespeare', 'Milton', 'Jane Austen'),
(52, 'General Tamil / General English', 'Literature', 'Who wrote \"Hamlet\"?', 'William Shakespeare', 'Milton', 'Wordsworth', 'Keats', 'William Shakespeare'),
(53, 'General Tamil / General English', 'Literature', 'Who is known as the Father of English Poetry?', 'Chaucer', 'Shakespeare', 'Milton', 'Dryden', 'Chaucer'),
(54, 'General Tamil / General English', 'Literature', 'Who wrote \"Paradise Lost\"?', 'Milton', 'Shakespeare', 'Keats', 'Shelley', 'Milton'),
(55, 'General Tamil / General English', 'Literature', 'Who is the author of \"Oliver Twist\"?', 'Charles Dickens', 'Hardy', 'Austen', 'Eliot', 'Charles Dickens'),
(56, 'General Tamil / General English', 'Literature', 'Who wrote \"The Merchant of Venice\"?', 'Shakespeare', 'Milton', 'Wordsworth', 'Keats', 'Shakespeare'),
(57, 'General Tamil / General English', 'Literature', 'Who is a famous Romantic poet?', 'Wordsworth', 'Bacon', 'Dryden', 'Pope', 'Wordsworth'),
(58, 'General Tamil / General English', 'Literature', 'Who wrote \"Ode to a Nightingale\"?', 'Keats', 'Shelley', 'Wordsworth', 'Blake', 'Keats'),
(59, 'General Tamil / General English', 'Literature', 'Who is the author of \"David Copperfield\"?', 'Dickens', 'Hardy', 'Austen', 'Eliot', 'Dickens'),
(60, 'General Tamil / General English', 'Literature', 'Who wrote \"The Tempest\"?', 'Shakespeare', 'Milton', 'Keats', 'Shelley', 'Shakespeare'),
(61, 'General Tamil / General English', 'Literature', 'Who wrote \"Gulliver’s Travels\"?', 'Jonathan Swift', 'Defoe', 'Dickens', 'Hardy', 'Jonathan Swift'),
(62, 'General Tamil / General English', 'Literature', 'Who wrote \"Robinson Crusoe\"?', 'Daniel Defoe', 'Swift', 'Dickens', 'Hardy', 'Daniel Defoe'),
(63, 'General Tamil / General English', 'Literature', 'Who is the author of \"Wuthering Heights\"?', 'Emily Bronte', 'Charlotte Bronte', 'Austen', 'Eliot', 'Emily Bronte'),
(64, 'General Tamil / General English', 'Literature', 'Who wrote \"Jane Eyre\"?', 'Charlotte Bronte', 'Emily Bronte', 'Austen', 'Eliot', 'Charlotte Bronte'),
(65, 'General Tamil / General English', 'Literature', 'Who is the author of \"Sense and Sensibility\"?', 'Jane Austen', 'Bronte', 'Eliot', 'Hardy', 'Jane Austen'),
(66, 'General Tamil / General English', 'Literature', 'Who wrote \"The Waste Land\"?', 'T.S. Eliot', 'Yeats', 'Frost', 'Pound', 'T.S. Eliot'),
(67, 'General Tamil / General English', 'Literature', 'Who wrote \"The Raven\"?', 'Edgar Allan Poe', 'Frost', 'Whitman', 'Eliot', 'Edgar Allan Poe'),
(68, 'General Tamil / General English', 'Literature', 'Who wrote \"Ulysses\"?', 'James Joyce', 'Eliot', 'Woolf', 'Hardy', 'James Joyce'),
(69, 'General Tamil / General English', 'Literature', 'Who is the author of \"The Old Man and the Sea\"?', 'Hemingway', 'Fitzgerald', 'Steinbeck', 'Orwell', 'Hemingway'),
(70, 'General Tamil / General English', 'Literature', 'Who wrote \"Animal Farm\"?', 'Orwell', 'Huxley', 'Golding', 'Orwell', 'Orwell'),
(71, 'General Tamil / General English', 'Literature', 'Who wrote \"1984\"?', 'George Orwell', 'Huxley', 'Wells', 'Shaw', 'George Orwell'),
(72, 'General Tamil / General English', 'Literature', 'Who wrote \"Brave New World\"?', 'Aldous Huxley', 'Orwell', 'Wells', 'Shaw', 'Aldous Huxley'),
(73, 'General Tamil / General English', 'Literature', 'Who wrote \"The Jungle Book\"?', 'Rudyard Kipling', 'Twain', 'London', 'Stevenson', 'Rudyard Kipling'),
(74, 'General Tamil / General English', 'Literature', 'Who wrote \"Treasure Island\"?', 'Robert Louis Stevenson', 'Twain', 'London', 'Kipling', 'Robert Louis Stevenson'),
(75, 'General Tamil / General English', 'Literature', 'Who wrote \"Adventures of Tom Sawyer\"?', 'Mark Twain', 'London', 'Kipling', 'Stevenson', 'Mark Twain'),
(76, 'General Tamil / General English', 'Literature', 'Who wrote \"Moby Dick\"?', 'Herman Melville', 'Twain', 'London', 'Hawthorne', 'Herman Melville'),
(77, 'General Tamil / General English', 'Literature', 'Who wrote \"The Scarlet Letter\"?', 'Hawthorne', 'Melville', 'Twain', 'London', 'Hawthorne'),
(78, 'General Tamil / General English', 'Literature', 'Who wrote \"The Call of the Wild\"?', 'Jack London', 'Twain', 'Melville', 'Hawthorne', 'Jack London'),
(79, 'General Tamil / General English', 'Literature', 'Who wrote \"The Great Gatsby\"?', 'F. Scott Fitzgerald', 'Hemingway', 'Steinbeck', 'Orwell', 'F. Scott Fitzgerald'),
(80, 'General Tamil / General English', 'Literature', 'Who wrote \"Of Mice and Men\"?', 'John Steinbeck', 'Fitzgerald', 'Hemingway', 'Orwell', 'John Steinbeck'),
(81, 'General Tamil / General English', 'Literature', 'Who wrote \"Macbeth\"?', 'Shakespeare', 'Milton', 'Keats', 'Shelley', 'Shakespeare'),
(82, 'General Tamil / General English', 'Literature', 'Who wrote \"Julius Caesar\"?', 'Shakespeare', 'Milton', 'Keats', 'Shelley', 'Shakespeare'),
(83, 'General Tamil / General English', 'Literature', 'Who wrote \"King Lear\"?', 'Shakespeare', 'Milton', 'Keats', 'Shelley', 'Shakespeare'),
(84, 'General Tamil / General English', 'Literature', 'Who wrote \"A Tale of Two Cities\"?', 'Charles Dickens', 'Hardy', 'Austen', 'Eliot', 'Charles Dickens'),
(85, 'General Tamil / General English', 'Literature', 'Who wrote \"Hard Times\"?', 'Dickens', 'Hardy', 'Austen', 'Eliot', 'Dickens'),
(86, 'General Tamil / General English', 'Literature', 'Who wrote \"Far from the Madding Crowd\"?', 'Thomas Hardy', 'Dickens', 'Austen', 'Eliot', 'Thomas Hardy'),
(87, 'General Tamil / General English', 'Literature', 'Who wrote \"Middlemarch\"?', 'George Eliot', 'Hardy', 'Austen', 'Dickens', 'George Eliot'),
(88, 'General Tamil / General English', 'Literature', 'Who wrote \"The Mill on the Floss\"?', 'George Eliot', 'Hardy', 'Austen', 'Dickens', 'George Eliot'),
(89, 'General Tamil / General English', 'Literature', 'Who wrote \"Leaves of Grass\"?', 'Walt Whitman', 'Frost', 'Eliot', 'Poe', 'Walt Whitman'),
(90, 'General Tamil / General English', 'Literature', 'Who wrote \"The Road Not Taken\"?', 'Robert Frost', 'Whitman', 'Eliot', 'Poe', 'Robert Frost'),
(91, 'General Tamil / General English', 'Literature', 'Who wrote \"Stopping by Woods on a Snowy Evening\"?', 'Robert Frost', 'Whitman', 'Eliot', 'Poe', 'Robert Frost'),
(92, 'General Tamil / General English', 'Literature', 'Who wrote \"If—\"?', 'Rudyard Kipling', 'Frost', 'Whitman', 'Eliot', 'Rudyard Kipling'),
(93, 'General Tamil / General English', 'Literature', 'Who wrote \"Daffodils\"?', 'Wordsworth', 'Keats', 'Shelley', 'Blake', 'Wordsworth'),
(94, 'General Tamil / General English', 'Literature', 'Who wrote \"Kubla Khan\"?', 'Coleridge', 'Wordsworth', 'Keats', 'Shelley', 'Coleridge'),
(95, 'General Tamil / General English', 'Literature', 'Who wrote \"Ode to the West Wind\"?', 'Shelley', 'Keats', 'Wordsworth', 'Blake', 'Shelley'),
(96, 'General Tamil / General English', 'Literature', 'Who wrote \"The Tyger\"?', 'William Blake', 'Wordsworth', 'Keats', 'Shelley', 'William Blake'),
(97, 'General Tamil / General English', 'Literature', 'Who wrote \"Doctor Faustus\"?', 'Christopher Marlowe', 'Shakespeare', 'Milton', 'Jonson', 'Christopher Marlowe'),
(98, 'General Tamil / General English', 'Literature', 'Who wrote \"Every Man in His Humour\"?', 'Ben Jonson', 'Marlowe', 'Shakespeare', 'Milton', 'Ben Jonson'),
(99, 'General Tamil / General English', 'Comprehension', 'Choose the synonym of \"Happy\"', 'Sad', 'Joyful', 'Angry', 'Tired', 'Joyful'),
(100, 'General Tamil / General English', 'Comprehension', 'Choose the antonym of \"Big\"', 'Large', 'Huge', 'Small', 'Tall', 'Small'),
(101, 'General Tamil / General English', 'Comprehension', 'Choose the synonym of \"Quick\"', 'Slow', 'Fast', 'Late', 'Weak', 'Fast'),
(102, 'General Tamil / General English', 'Comprehension', 'Choose the antonym of \"Hot\"', 'Warm', 'Cool', 'Boiling', 'Heat', 'Cool'),
(103, 'General Tamil / General English', 'Comprehension', 'Choose the synonym of \"Smart\"', 'Dull', 'Intelligent', 'Slow', 'Weak', 'Intelligent'),
(104, 'General Tamil / General English', 'Comprehension', 'Choose the antonym of \"Easy\"', 'Simple', 'Hard', 'Light', 'Clear', 'Hard'),
(105, 'General Tamil / General English', 'Comprehension', 'Choose the synonym of \"Strong\"', 'Weak', 'Powerful', 'Small', 'Thin', 'Powerful'),
(106, 'General Tamil / General English', 'Comprehension', 'Choose the antonym of \"Rich\"', 'Wealthy', 'Poor', 'Big', 'Large', 'Poor'),
(107, 'General Tamil / General English', 'Comprehension', 'Choose the synonym of \"Begin\"', 'Start', 'End', 'Finish', 'Stop', 'Start'),
(108, 'General Tamil / General English', 'Comprehension', 'Choose the antonym of \"Early\"', 'Late', 'Soon', 'Fast', 'Quick', 'Late'),
(109, 'General Tamil / General English', 'Comprehension', 'Choose the synonym of \"Brave\"', 'Fearful', 'Courageous', 'Weak', 'Lazy', 'Courageous'),
(110, 'General Tamil / General English', 'Comprehension', 'Choose the antonym of \"Clean\"', 'Neat', 'Dirty', 'Pure', 'Clear', 'Dirty'),
(111, 'General Tamil / General English', 'Comprehension', 'Choose the synonym of \"Big\"', 'Large', 'Tiny', 'Small', 'Short', 'Large'),
(112, 'General Tamil / General English', 'Comprehension', 'Choose the antonym of \"Up\"', 'Down', 'Top', 'High', 'Above', 'Down'),
(113, 'General Tamil / General English', 'Comprehension', 'Choose the synonym of \"End\"', 'Finish', 'Start', 'Open', 'Begin', 'Finish'),
(114, 'General Tamil / General English', 'Comprehension', 'Choose the antonym of \"Full\"', 'Complete', 'Empty', 'Filled', 'Loaded', 'Empty'),
(115, 'General Tamil / General English', 'Comprehension', 'Choose the synonym of \"Cold\"', 'Cool', 'Hot', 'Warm', 'Boil', 'Cool'),
(116, 'General Tamil / General English', 'Comprehension', 'Choose the antonym of \"Strong\"', 'Powerful', 'Weak', 'Hard', 'Solid', 'Weak'),
(117, 'General Tamil / General English', 'Comprehension', 'Choose the synonym of \"Old\"', 'Aged', 'Young', 'New', 'Fresh', 'Aged'),
(118, 'General Tamil / General English', 'Comprehension', 'Choose the antonym of \"Young\"', 'New', 'Old', 'Fresh', 'Small', 'Old'),
(119, 'General Tamil / General English', 'Comprehension', 'Choose the synonym of \"Happy\"', 'Glad', 'Sad', 'Angry', 'Cry', 'Glad'),
(120, 'General Tamil / General English', 'Comprehension', 'Choose the antonym of \"Light\"', 'Bright', 'Heavy', 'Clear', 'White', 'Heavy'),
(121, 'General Tamil / General English', 'Comprehension', 'Choose the synonym of \"Help\"', 'Assist', 'Stop', 'Block', 'Leave', 'Assist'),
(122, 'General Tamil / General English', 'Comprehension', 'Choose the antonym of \"Open\"', 'Close', 'Start', 'Begin', 'Unlock', 'Close'),
(123, 'General Tamil / General English', 'Comprehension', 'Choose the synonym of \"Strong\"', 'Firm', 'Weak', 'Soft', 'Light', 'Firm'),
(124, 'General Tamil / General English', 'Comprehension', 'Choose the antonym of \"Near\"', 'Close', 'Far', 'Beside', 'Next', 'Far'),
(125, 'General Tamil / General English', 'Comprehension', 'Choose the synonym of \"Fast\"', 'Quick', 'Slow', 'Late', 'Delay', 'Quick'),
(126, 'General Tamil / General English', 'Comprehension', 'Choose the antonym of \"Dark\"', 'Black', 'Light', 'Night', 'Dim', 'Light'),
(127, 'General Tamil / General English', 'Comprehension', 'Choose the synonym of \"Buy\"', 'Purchase', 'Sell', 'Give', 'Take', 'Purchase'),
(128, 'General Tamil / General English', 'Comprehension', 'Choose the antonym of \"Give\"', 'Take', 'Provide', 'Offer', 'Send', 'Take'),
(129, 'General Tamil / General English', 'Comprehension', 'Choose the synonym of \"Look\"', 'See', 'Hear', 'Touch', 'Taste', 'See'),
(130, 'General Tamil / General English', 'Comprehension', 'Choose the antonym of \"Come\"', 'Arrive', 'Go', 'Enter', 'Move', 'Go'),
(131, 'General Tamil / General English', 'Comprehension', 'Choose the synonym of \"Think\"', 'Consider', 'Run', 'Jump', 'Play', 'Consider'),
(132, 'General Tamil / General English', 'Comprehension', 'Choose the antonym of \"Above\"', 'Top', 'Below', 'Up', 'High', 'Below'),
(133, 'General Tamil / General English', 'Comprehension', 'Choose the synonym of \"Make\"', 'Create', 'Break', 'Destroy', 'Cut', 'Create'),
(134, 'General Tamil / General English', 'Comprehension', 'Choose the antonym of \"Start\"', 'Begin', 'End', 'Open', 'Do', 'End'),
(135, 'General Tamil / General English', 'Comprehension', 'Choose the synonym of \"Hard\"', 'Difficult', 'Easy', 'Simple', 'Light', 'Difficult'),
(136, 'General Tamil / General English', 'Comprehension', 'Choose the antonym of \"Happy\"', 'Sad', 'Joy', 'Smile', 'Laugh', 'Sad'),
(137, 'General Tamil / General English', 'Comprehension', 'Choose the synonym of \"End\"', 'Close', 'Open', 'Start', 'Begin', 'Close'),
(138, 'General Tamil / General English', 'Comprehension', 'Choose the antonym of \"Right\"', 'Correct', 'Wrong', 'True', 'Yes', 'Wrong'),
(139, 'General Tamil / General English', 'Comprehension', 'Choose the synonym of \"Clean\"', 'Pure', 'Dirty', 'Messy', 'Rough', 'Pure'),
(140, 'General Tamil / General English', 'Comprehension', 'Choose the antonym of \"High\"', 'Tall', 'Low', 'Top', 'Big', 'Low'),
(141, 'General Tamil / General English', 'Comprehension', 'Choose the synonym of \"Speak\"', 'Talk', 'Run', 'Jump', 'Write', 'Talk'),
(142, 'General Tamil / General English', 'Comprehension', 'Choose the antonym of \"Strong\"', 'Hard', 'Weak', 'Solid', 'Firm', 'Weak'),
(143, 'General Tamil / General English', 'Comprehension', 'Choose the synonym of \"Happy\"', 'Pleasant', 'Sad', 'Cry', 'Angry', 'Pleasant'),
(144, 'General Tamil / General English', 'Comprehension', 'Choose the antonym of \"Good\"', 'Bad', 'Nice', 'Best', 'Better', 'Bad'),
(145, 'General Tamil / General English', 'Comprehension', 'Choose the synonym of \"Big\"', 'Huge', 'Tiny', 'Small', 'Little', 'Huge'),
(146, 'General Tamil / General English', 'Comprehension', 'Choose the antonym of \"Fast\"', 'Quick', 'Rapid', 'Slow', 'Speed', 'Slow'),
(147, 'General Tamil / General English', 'Comprehension', 'Choose the synonym of \"Small\"', 'Tiny', 'Big', 'Large', 'Huge', 'Tiny'),
(148, 'General Studies', 'Indian Polity', 'Which part of the Indian Constitution deals with Fundamental Rights?', 'Part II', 'Part III', 'Part IV', 'Part V', 'Part III'),
(149, 'General Studies', 'Indian Polity', 'Directive Principles of State Policy are included in which part?', 'Part II', 'Part III', 'Part IV', 'Part V', 'Part IV'),
(150, 'General Studies', 'Indian Polity', 'Who is the head of the Indian State?', 'Prime Minister', 'President', 'Chief Justice', 'Governor', 'President'),
(151, 'General Studies', 'Indian Polity', 'Who appoints the Prime Minister of India?', 'President', 'Governor', 'Parliament', 'Chief Justice', 'President'),
(152, 'General Studies', 'Indian Polity', 'The tenure of Lok Sabha is?', '4 years', '5 years', '6 years', '7 years', '5 years'),
(153, 'General Studies', 'Indian Polity', 'Which house is known as Upper House?', 'Lok Sabha', 'Rajya Sabha', 'Assembly', 'Council', 'Rajya Sabha'),
(154, 'General Studies', 'Indian Polity', 'Article 32 deals with?', 'Right to Equality', 'Right to Freedom', 'Right to Constitutional Remedies', 'Right to Education', 'Right to Constitutional Remedies'),
(155, 'General Studies', 'Indian Polity', 'Which article guarantees equality before law?', 'Article 14', 'Article 19', 'Article 21', 'Article 32', 'Article 14'),
(156, 'General Studies', 'Indian Polity', 'Who is the guardian of Constitution?', 'President', 'Supreme Court', 'Parliament', 'Prime Minister', 'Supreme Court'),
(157, 'General Studies', 'Indian Polity', 'Fundamental Duties were added by which amendment?', '42nd', '44th', '52nd', '86th', '42nd'),
(158, 'General Studies', 'Indian Polity', 'Minimum age for Lok Sabha membership?', '21', '25', '30', '35', '25'),
(159, 'General Studies', 'Indian Polity', 'Minimum age for President of India?', '30', '35', '40', '45', '35'),
(160, 'General Studies', 'Indian Polity', 'Who presides over Lok Sabha?', 'Prime Minister', 'Speaker', 'President', 'Governor', 'Speaker'),
(161, 'General Studies', 'Indian Polity', 'Who presides over Rajya Sabha?', 'Speaker', 'Prime Minister', 'Vice President', 'President', 'Vice President'),
(162, 'General Studies', 'Indian Polity', 'Who appoints Governors?', 'Prime Minister', 'President', 'Parliament', 'Chief Minister', 'President'),
(163, 'General Studies', 'Indian Polity', 'Which schedule deals with Panchayati Raj?', '7th', '9th', '10th', '11th', '11th'),
(164, 'General Studies', 'Indian Polity', 'Which schedule deals with Municipalities?', '10th', '11th', '12th', '9th', '12th'),
(165, 'General Studies', 'Indian Polity', 'Who can amend the Constitution?', 'President', 'Parliament', 'Supreme Court', 'Governor', 'Parliament'),
(166, 'General Studies', 'Indian Polity', 'Which article deals with Right to Freedom?', 'Article 19', 'Article 14', 'Article 21', 'Article 32', 'Article 19'),
(167, 'General Studies', 'Indian Polity', 'Which article deals with Right to Life?', 'Article 14', 'Article 19', 'Article 21', 'Article 22', 'Article 21'),
(168, 'General Studies', 'Indian Polity', 'How many Fundamental Rights are there currently?', '5', '6', '7', '8', '6'),
(169, 'General Studies', 'Indian Polity', 'Who is the executive head of India?', 'President', 'Prime Minister', 'Governor', 'Speaker', 'President'),
(170, 'General Studies', 'Indian Polity', 'Who is the real executive head?', 'President', 'Prime Minister', 'Chief Justice', 'Governor', 'Prime Minister'),
(171, 'General Studies', 'Indian Polity', 'Who appoints Chief Justice of India?', 'President', 'Prime Minister', 'Parliament', 'Governor', 'President'),
(172, 'General Studies', 'Indian Polity', 'Which article deals with Emergency provisions?', '352', '356', '360', 'All of these', 'All of these'),
(173, 'General Studies', 'Indian Polity', 'Who declares National Emergency?', 'Prime Minister', 'President', 'Parliament', 'Governor', 'President'),
(174, 'General Studies', 'Indian Polity', 'What is the tenure of Rajya Sabha members?', '4 years', '5 years', '6 years', 'Permanent', '6 years'),
(175, 'General Studies', 'Indian Polity', 'Which house cannot be dissolved?', 'Lok Sabha', 'Rajya Sabha', 'Assembly', 'Council', 'Rajya Sabha'),
(176, 'General Studies', 'Indian Polity', 'Which article deals with President rule?', '352', '356', '360', '370', '356'),
(177, 'General Studies', 'Indian Polity', 'Which article deals with Financial Emergency?', '352', '356', '360', '370', '360'),
(178, 'General Studies', 'Indian Polity', 'Who is the head of State in Tamil Nadu?', 'Chief Minister', 'Governor', 'President', 'Speaker', 'Governor'),
(179, 'General Studies', 'Indian Polity', 'Who appoints Chief Minister?', 'President', 'Governor', 'Prime Minister', 'Speaker', 'Governor'),
(180, 'General Studies', 'Indian Polity', 'Which article abolished untouchability?', '15', '16', '17', '18', '17'),
(181, 'General Studies', 'Indian Polity', 'Right to Education comes under which article?', '19', '21A', '32', '14', '21A'),
(182, 'General Studies', 'Indian Polity', 'Who controls the Union List?', 'State', 'Centre', 'Both', 'None', 'Centre'),
(183, 'General Studies', 'Indian Polity', 'Which list has 3 lists?', 'Union', 'State', 'Concurrent', 'Seventh Schedule', 'Seventh Schedule'),
(184, 'General Studies', 'Indian Polity', 'Who is the head of Council of Ministers?', 'President', 'Prime Minister', 'Governor', 'Speaker', 'Prime Minister'),
(185, 'General Studies', 'Indian Polity', 'Who can dissolve Lok Sabha?', 'Prime Minister', 'President', 'Speaker', 'Governor', 'President'),
(186, 'General Studies', 'Indian Polity', 'Which amendment reduced voting age to 18?', '61st', '42nd', '44th', '86th', '61st'),
(187, 'General Studies', 'Indian Polity', 'Which body conducts elections?', 'UPSC', 'Election Commission', 'Finance Commission', 'Planning Commission', 'Election Commission'),
(188, 'General Studies', 'Indian Polity', 'Who prepares Union Budget?', 'President', 'Prime Minister', 'Finance Minister', 'Parliament', 'Finance Minister'),
(189, 'General Studies', 'Indian Polity', 'Who is the head of Judiciary?', 'President', 'Chief Justice', 'Prime Minister', 'Governor', 'Chief Justice'),
(190, 'General Studies', 'Indian Polity', 'Which article deals with freedom of speech?', '19', '21', '14', '32', '19'),
(191, 'General Studies', 'Indian Polity', 'Who signs bills into law?', 'Prime Minister', 'President', 'Speaker', 'Governor', 'President'),
(192, 'General Studies', 'Indian Polity', 'Which house introduces Money Bill?', 'Rajya Sabha', 'Lok Sabha', 'Both', 'None', 'Lok Sabha'),
(193, 'General Studies', 'Indian Polity', 'Who certifies Money Bill?', 'President', 'Speaker', 'Prime Minister', 'Governor', 'Speaker'),
(194, 'General Studies', 'Indian Polity', 'Who appoints Election Commissioner?', 'President', 'Prime Minister', 'Parliament', 'Supreme Court', 'President'),
(195, 'General Studies', 'Indian Polity', 'Which article deals with amendment procedure?', '368', '370', '356', '360', '368'),
(196, 'General Studies', 'Indian Polity', 'Which body interprets Constitution?', 'Parliament', 'Supreme Court', 'President', 'Governor', 'Supreme Court'),
(197, 'General Studies', 'Indian Economy', 'What does GDP stand for?', 'Gross Domestic Product', 'General Domestic Product', 'Gross Development Product', 'Global Domestic Product', 'Gross Domestic Product'),
(198, 'General Studies', 'Indian Economy', 'Which sector is known as primary sector?', 'Industry', 'Services', 'Agriculture', 'Transport', 'Agriculture'),
(199, 'General Studies', 'Indian Economy', 'RBI stands for?', 'Reserve Bank of India', 'Regional Bank of India', 'Rural Bank of India', 'Reserve Board of India', 'Reserve Bank of India'),
(200, 'General Studies', 'Indian Economy', 'Who controls monetary policy in India?', 'Government', 'RBI', 'Finance Minister', 'Planning Commission', 'RBI'),
(201, 'General Studies', 'Indian Economy', 'What is inflation?', 'Rise in prices', 'Fall in prices', 'Stable prices', 'None', 'Rise in prices'),
(202, 'General Studies', 'Indian Economy', 'Which tax is levied on income?', 'Indirect tax', 'Direct tax', 'Service tax', 'GST', 'Direct tax'),
(203, 'General Studies', 'Indian Economy', 'GST stands for?', 'Goods and Services Tax', 'General Sales Tax', 'Gross Sales Tax', 'Goods Supply Tax', 'Goods and Services Tax'),
(204, 'General Studies', 'Indian Economy', 'Which is the central bank of India?', 'SBI', 'RBI', 'ICICI', 'PNB', 'RBI'),
(205, 'General Studies', 'Indian Economy', 'Which sector provides services?', 'Primary', 'Secondary', 'Tertiary', 'Agriculture', 'Tertiary'),
(206, 'General Studies', 'Indian Economy', 'Which is an example of indirect tax?', 'Income tax', 'GST', 'Wealth tax', 'Corporate tax', 'GST'),
(207, 'General Studies', 'Indian Economy', 'What is national income?', 'Total income of country', 'Total export', 'Total import', 'None', 'Total income of country'),
(208, 'General Studies', 'Indian Economy', 'Which organization releases Union Budget?', 'RBI', 'Finance Ministry', 'Planning Commission', 'SEBI', 'Finance Ministry'),
(209, 'General Studies', 'Indian Economy', 'What is poverty?', 'Lack of income', 'Wealth', 'Growth', 'Profit', 'Lack of income'),
(210, 'General Studies', 'Indian Economy', 'Which bank is known as banker’s bank?', 'SBI', 'RBI', 'ICICI', 'HDFC', 'RBI'),
(211, 'General Studies', 'Indian Economy', 'Which sector converts raw materials?', 'Primary', 'Secondary', 'Tertiary', 'None', 'Secondary'),
(212, 'General Studies', 'Indian Economy', 'Which is the largest sector in India?', 'Agriculture', 'Industry', 'Services', 'Transport', 'Services'),
(213, 'General Studies', 'Indian Economy', 'What is fiscal policy?', 'Government revenue policy', 'Bank policy', 'Trade policy', 'None', 'Government revenue policy'),
(214, 'General Studies', 'Indian Economy', 'Which tax replaced many indirect taxes?', 'Income tax', 'GST', 'Custom duty', 'Excise', 'GST'),
(215, 'General Studies', 'Indian Economy', 'Which is not a direct tax?', 'Income tax', 'Wealth tax', 'GST', 'Corporate tax', 'GST'),
(216, 'General Studies', 'Indian Economy', 'Which organization regulates stock market?', 'RBI', 'SEBI', 'LIC', 'IRDA', 'SEBI'),
(217, 'General Studies', 'Indian Economy', 'Which scheme is for rural employment?', 'MGNREGA', 'PMAY', 'Jan Dhan', 'Make in India', 'MGNREGA'),
(218, 'General Studies', 'Indian Economy', 'Which scheme promotes financial inclusion?', 'Jan Dhan Yojana', 'MGNREGA', 'PMAY', 'Swachh Bharat', 'Jan Dhan Yojana'),
(219, 'General Studies', 'Indian Economy', 'Which is a public sector bank?', 'SBI', 'HDFC', 'ICICI', 'Axis', 'SBI'),
(220, 'General Studies', 'Indian Economy', 'Which is private sector bank?', 'SBI', 'PNB', 'ICICI', 'BOB', 'ICICI'),
(221, 'General Studies', 'Indian Economy', 'What is demand?', 'Need for goods', 'Supply of goods', 'Production', 'None', 'Need for goods'),
(222, 'General Studies', 'Indian Economy', 'What is supply?', 'Availability of goods', 'Demand', 'Consumption', 'None', 'Availability of goods'),
(223, 'General Studies', 'Indian Economy', 'What is per capita income?', 'Income per person', 'Total income', 'Export income', 'None', 'Income per person'),
(224, 'General Studies', 'Indian Economy', 'Which organization plans development earlier?', 'Planning Commission', 'NITI Aayog', 'RBI', 'SEBI', 'Planning Commission'),
(225, 'General Studies', 'Indian Economy', 'NITI Aayog replaced?', 'Planning Commission', 'RBI', 'SEBI', 'LIC', 'Planning Commission'),
(226, 'General Studies', 'Indian Economy', 'What is banking?', 'Accepting deposits', 'Selling goods', 'Production', 'None', 'Accepting deposits'),
(227, 'General Studies', 'Indian Economy', 'Which bank issues currency?', 'RBI', 'SBI', 'ICICI', 'PNB', 'RBI'),
(228, 'General Studies', 'Indian Economy', 'Which is capital of India economy?', 'Money', 'Gold', 'Land', 'Labor', 'Money'),
(229, 'General Studies', 'Indian Economy', 'What is unemployment?', 'No job', 'Job', 'Salary', 'None', 'No job'),
(230, 'General Studies', 'Indian Economy', 'Which sector includes IT?', 'Primary', 'Secondary', 'Tertiary', 'None', 'Tertiary'),
(231, 'General Studies', 'Indian Economy', 'Which is export?', 'Selling goods abroad', 'Buying goods', 'Production', 'None', 'Selling goods abroad'),
(232, 'General Studies', 'Indian Economy', 'Which is import?', 'Buying goods', 'Selling goods', 'Production', 'None', 'Buying goods'),
(233, 'General Studies', 'Indian Economy', 'Which tax is on goods?', 'Income tax', 'GST', 'Wealth tax', 'None', 'GST'),
(234, 'General Studies', 'Indian Economy', 'What is saving?', 'Income not spent', 'Spending', 'Loss', 'None', 'Income not spent'),
(235, 'General Studies', 'Indian Economy', 'What is investment?', 'Use of money for profit', 'Loss', 'Spending', 'None', 'Use of money for profit'),
(236, 'General Studies', 'Indian Economy', 'Which bank gives loans to farmers?', 'Commercial banks', 'RBI', 'SEBI', 'LIC', 'Commercial banks'),
(237, 'General Studies', 'Indian Economy', 'Which is micro finance?', 'Small loans', 'Big loans', 'Export', 'Import', 'Small loans'),
(238, 'General Studies', 'Indian Economy', 'Which scheme for housing?', 'PMAY', 'MGNREGA', 'Jan Dhan', 'Make in India', 'PMAY'),
(239, 'General Studies', 'Indian Economy', 'Which is inflation control tool?', 'Monetary policy', 'Education', 'Health', 'None', 'Monetary policy'),
(240, 'General Studies', 'Indian Economy', 'Which is budget?', 'Income & expenditure plan', 'Profit', 'Loss', 'None', 'Income & expenditure plan'),
(241, 'General Studies', 'Indian Economy', 'Which sector grows fastest?', 'Services', 'Agriculture', 'Industry', 'None', 'Services'),
(242, 'General Studies', 'Indian Economy', 'Which is currency of India?', 'Rupee', 'Dollar', 'Euro', 'Yen', 'Rupee'),
(243, 'General Studies', 'Indian Economy', 'Which is planning body now?', 'NITI Aayog', 'Planning Commission', 'RBI', 'SEBI', 'NITI Aayog'),
(244, 'General Studies', 'Indian Economy', 'Which is rural bank?', 'RRB', 'SBI', 'ICICI', 'HDFC', 'RRB'),
(245, 'General Studies', 'Indian Economy', 'Which tax is paid by company?', 'Corporate tax', 'GST', 'Income tax', 'None', 'Corporate tax'),
(246, 'General Studies', 'Geography', 'What is the shape of the Earth?', 'Flat', 'Spherical', 'Square', 'Oval', 'Spherical'),
(247, 'General Studies', 'Geography', 'Which is the longest river in India?', 'Ganga', 'Yamuna', 'Godavari', 'Krishna', 'Ganga'),
(248, 'General Studies', 'Geography', 'Which is the highest mountain in the world?', 'K2', 'Kanchenjunga', 'Everest', 'Aravalli', 'Everest'),
(249, 'General Studies', 'Geography', 'Which is the largest continent?', 'Africa', 'Asia', 'Europe', 'Australia', 'Asia'),
(250, 'General Studies', 'Geography', 'Which is the largest ocean?', 'Atlantic', 'Indian', 'Arctic', 'Pacific', 'Pacific'),
(251, 'General Studies', 'Geography', 'What is latitude?', 'Horizontal lines', 'Vertical lines', 'Circles', 'None', 'Horizontal lines'),
(252, 'General Studies', 'Geography', 'What is longitude?', 'Horizontal lines', 'Vertical lines', 'Circles', 'None', 'Vertical lines'),
(253, 'General Studies', 'Geography', 'Equator divides Earth into?', 'North & South', 'East & West', 'Top & Bottom', 'None', 'North & South'),
(254, 'General Studies', 'Geography', 'Which layer protects Earth from UV rays?', 'Troposphere', 'Stratosphere', 'Mesosphere', 'Thermosphere', 'Stratosphere'),
(255, 'General Studies', 'Geography', 'Which is the hottest planet?', 'Mars', 'Venus', 'Earth', 'Mercury', 'Venus'),
(256, 'General Studies', 'Geography', 'Which is the coldest place in India?', 'Leh', 'Drass', 'Shimla', 'Manali', 'Drass'),
(257, 'General Studies', 'Geography', 'Which soil is best for cotton?', 'Red soil', 'Black soil', 'Alluvial soil', 'Laterite soil', 'Black soil'),
(258, 'General Studies', 'Geography', 'Which is the largest desert in India?', 'Thar', 'Sahara', 'Gobi', 'Kalahari', 'Thar'),
(259, 'General Studies', 'Geography', 'Monsoon winds bring?', 'Cold air', 'Rainfall', 'Snow', 'Heat', 'Rainfall'),
(260, 'General Studies', 'Geography', 'Which plateau is richest in minerals?', 'Deccan Plateau', 'Chota Nagpur Plateau', 'Malwa Plateau', 'None', 'Chota Nagpur Plateau'),
(261, 'General Studies', 'Geography', 'Which river flows through Tamil Nadu?', 'Ganga', 'Yamuna', 'Cauvery', 'Brahmaputra', 'Cauvery'),
(262, 'General Studies', 'Geography', 'Which is the capital of Tamil Nadu?', 'Madurai', 'Coimbatore', 'Chennai', 'Trichy', 'Chennai'),
(263, 'General Studies', 'Geography', 'Which forest is found in heavy rainfall?', 'Desert', 'Evergreen', 'Grassland', 'Tundra', 'Evergreen'),
(264, 'General Studies', 'Geography', 'Which is the smallest continent?', 'Asia', 'Europe', 'Australia', 'Africa', 'Australia'),
(265, 'General Studies', 'Geography', 'Which is the deepest ocean?', 'Atlantic', 'Indian', 'Pacific', 'Arctic', 'Pacific'),
(266, 'General Studies', 'Geography', 'Which is a renewable resource?', 'Coal', 'Petrol', 'Solar energy', 'Gas', 'Solar energy'),
(267, 'General Studies', 'Geography', 'Which is non-renewable?', 'Wind', 'Solar', 'Coal', 'Water', 'Coal'),
(268, 'General Studies', 'Geography', 'Which river is called sorrow of Bihar?', 'Ganga', 'Kosi', 'Godavari', 'Krishna', 'Kosi'),
(269, 'General Studies', 'Geography', 'Which is the capital of India?', 'Delhi', 'Mumbai', 'Chennai', 'Kolkata', 'Delhi'),
(270, 'General Studies', 'Geography', 'Which is the largest state in India (area)?', 'UP', 'Maharashtra', 'Rajasthan', 'MP', 'Rajasthan'),
(271, 'General Studies', 'Geography', 'Which is the smallest state?', 'Goa', 'Sikkim', 'Tripura', 'Manipur', 'Goa'),
(272, 'General Studies', 'Geography', 'Which river forms delta?', 'Ganga', 'Yamuna', 'Narmada', 'Tapti', 'Ganga'),
(273, 'General Studies', 'Geography', 'Which type of rainfall in India?', 'Cyclonic', 'Orographic', 'Monsoon', 'All', 'All'),
(274, 'General Studies', 'Geography', 'Which is a peninsula?', 'India', 'China', 'USA', 'Russia', 'India'),
(275, 'General Studies', 'Geography', 'Which ocean lies south of India?', 'Pacific', 'Atlantic', 'Indian', 'Arctic', 'Indian'),
(276, 'General Studies', 'Geography', 'Which is an island country?', 'India', 'Sri Lanka', 'China', 'Nepal', 'Sri Lanka'),
(277, 'General Studies', 'Geography', 'Which is a landlocked country?', 'India', 'Nepal', 'Sri Lanka', 'Maldives', 'Nepal'),
(278, 'General Studies', 'Geography', 'Which is largest river basin?', 'Ganga', 'Godavari', 'Krishna', 'Narmada', 'Ganga'),
(279, 'General Studies', 'Geography', 'Which state has highest rainfall?', 'Rajasthan', 'Tamil Nadu', 'Meghalaya', 'Punjab', 'Meghalaya'),
(280, 'General Studies', 'Geography', 'Which is famous for tea?', 'Punjab', 'Assam', 'Gujarat', 'Bihar', 'Assam'),
(281, 'General Studies', 'Geography', 'Which soil is fertile?', 'Alluvial', 'Desert', 'Laterite', 'Mountain', 'Alluvial'),
(282, 'General Studies', 'Geography', 'Which is plateau?', 'Himalayas', 'Deccan', 'Ganga plain', 'None', 'Deccan'),
(283, 'General Studies', 'Geography', 'Which is mountain range?', 'Aravalli', 'Ganga', 'Godavari', 'Krishna', 'Aravalli'),
(284, 'General Studies', 'Geography', 'Which is plain?', 'Ganga plain', 'Deccan', 'Himalaya', 'None', 'Ganga plain'),
(285, 'General Studies', 'Geography', 'Which is largest delta?', 'Sundarbans', 'Nile', 'Amazon', 'None', 'Sundarbans'),
(286, 'General Studies', 'Geography', 'Which is volcano?', 'Fujiyama', 'Everest', 'K2', 'None', 'Fujiyama'),
(287, 'General Studies', 'Geography', 'Which is earthquake scale?', 'Richter', 'Kelvin', 'Celsius', 'Pascal', 'Richter'),
(288, 'General Studies', 'Geography', 'Which gas is abundant in atmosphere?', 'Oxygen', 'Nitrogen', 'CO2', 'Hydrogen', 'Nitrogen'),
(289, 'General Studies', 'Geography', 'Which layer we live?', 'Troposphere', 'Stratosphere', 'Mesosphere', 'None', 'Troposphere'),
(290, 'General Studies', 'Geography', 'Which is climate factor?', 'Latitude', 'Altitude', 'Distance from sea', 'All', 'All'),
(291, 'General Studies', 'Geography', 'Which is wind?', 'Moving air', 'Water', 'Soil', 'None', 'Moving air'),
(292, 'General Studies', 'Geography', 'Which is cyclone?', 'High pressure', 'Low pressure storm', 'Heat', 'None', 'Low pressure storm'),
(293, 'General Studies', 'Geography', 'Which is tsunami?', 'Wind', 'Earthquake sea wave', 'Rain', 'None', 'Earthquake sea wave'),
(294, 'General Studies', 'Geography', 'Which is glacier?', 'Ice mass', 'Water', 'Soil', 'None', 'Ice mass'),
(295, 'General Studies', 'Geography', 'Which is erosion?', 'Soil removal', 'Soil making', 'Water storage', 'None', 'Soil removal'),
(296, 'General Studies', 'History', 'Who was the founder of Maurya Empire?', 'Chandragupta Maurya', 'Ashoka', 'Bindusara', 'Harsha', 'Chandragupta Maurya'),
(297, 'General Studies', 'History', 'Who was the last ruler of Maurya dynasty?', 'Ashoka', 'Bindusara', 'Brihadratha', 'Chandragupta', 'Brihadratha'),
(298, 'General Studies', 'History', 'Who built the Sanchi Stupa?', 'Ashoka', 'Harsha', 'Akbar', 'Shivaji', 'Ashoka'),
(299, 'General Studies', 'History', 'Who was the founder of Gupta Empire?', 'Samudragupta', 'Chandragupta I', 'Skandagupta', 'Harsha', 'Chandragupta I'),
(300, 'General Studies', 'History', 'Golden Age of India is during?', 'Maurya', 'Gupta', 'Delhi Sultanate', 'Mughal', 'Gupta'),
(301, 'General Studies', 'History', 'Who wrote Arthashastra?', 'Kalidasa', 'Kautilya', 'Aryabhatta', 'Panini', 'Kautilya'),
(302, 'General Studies', 'History', 'Who was known as Napoleon of India?', 'Ashoka', 'Samudragupta', 'Harsha', 'Akbar', 'Samudragupta'),
(303, 'General Studies', 'History', 'Who founded Delhi Sultanate?', 'Qutubuddin Aibak', 'Iltutmish', 'Balban', 'Alauddin Khilji', 'Qutubuddin Aibak'),
(304, 'General Studies', 'History', 'Who built Qutub Minar?', 'Akbar', 'Shah Jahan', 'Qutubuddin Aibak', 'Babur', 'Qutubuddin Aibak'),
(305, 'General Studies', 'History', 'Who was first Mughal emperor?', 'Akbar', 'Babur', 'Humayun', 'Aurangzeb', 'Babur'),
(306, 'General Studies', 'History', 'Who built Taj Mahal?', 'Akbar', 'Shah Jahan', 'Aurangzeb', 'Babur', 'Shah Jahan'),
(307, 'General Studies', 'History', 'Who was Akbar’s finance minister?', 'Birbal', 'Todar Mal', 'Tansen', 'Man Singh', 'Todar Mal'),
(308, 'General Studies', 'History', 'Who started Din-i-Ilahi?', 'Babur', 'Akbar', 'Aurangzeb', 'Humayun', 'Akbar'),
(309, 'General Studies', 'History', 'Who was last Mughal emperor?', 'Bahadur Shah II', 'Aurangzeb', 'Shah Alam', 'Akbar', 'Bahadur Shah II'),
(310, 'General Studies', 'History', 'Who discovered sea route to India?', 'Columbus', 'Vasco da Gama', 'Magellan', 'Cook', 'Vasco da Gama'),
(311, 'General Studies', 'History', 'Battle of Plassey fought in?', '1757', '1764', '1857', '1707', '1757'),
(312, 'General Studies', 'History', 'Who led 1857 revolt in Jhansi?', 'Rani Lakshmi Bai', 'Sarojini Naidu', 'Indira Gandhi', 'Annie Besant', 'Rani Lakshmi Bai'),
(313, 'General Studies', 'History', 'Who was first Governor General of India?', 'Dalhousie', 'Warren Hastings', 'Cornwallis', 'Clive', 'Warren Hastings'),
(314, 'General Studies', 'History', 'Who introduced Subsidiary Alliance?', 'Dalhousie', 'Wellesley', 'Cornwallis', 'Hastings', 'Wellesley'),
(315, 'General Studies', 'History', 'Doctrine of Lapse introduced by?', 'Dalhousie', 'Wellesley', 'Clive', 'Curzon', 'Dalhousie'),
(316, 'General Studies', 'History', 'Who founded Indian National Congress?', 'Gandhi', 'Nehru', 'A.O. Hume', 'Tilak', 'A.O. Hume'),
(317, 'General Studies', 'History', 'INC founded in?', '1885', '1905', '1919', '1857', '1885'),
(318, 'General Studies', 'History', 'Who gave slogan Swaraj is my birthright?', 'Gandhi', 'Tilak', 'Nehru', 'Bose', 'Tilak'),
(319, 'General Studies', 'History', 'Non-cooperation movement started in?', '1920', '1930', '1942', '1919', '1920'),
(320, 'General Studies', 'History', 'Quit India movement started in?', '1942', '1930', '1920', '1919', '1942'),
(321, 'General Studies', 'History', 'Who gave Quit India slogan?', 'Gandhi', 'Nehru', 'Bose', 'Tilak', 'Gandhi'),
(322, 'General Studies', 'History', 'Who led Salt March?', 'Gandhi', 'Nehru', 'Patel', 'Bose', 'Gandhi'),
(323, 'General Studies', 'History', 'Salt March year?', '1930', '1942', '1920', '1919', '1930'),
(324, 'General Studies', 'History', 'Jallianwala Bagh massacre year?', '1919', '1920', '1930', '1942', '1919'),
(325, 'General Studies', 'History', 'Who was Viceroy during Jallianwala Bagh?', 'Curzon', 'Irwin', 'Dyer', 'None', 'Dyer'),
(326, 'General Studies', 'History', 'Who formed INA?', 'Gandhi', 'Bose', 'Nehru', 'Patel', 'Bose'),
(327, 'General Studies', 'History', 'Who is Father of Nation?', 'Gandhi', 'Nehru', 'Bose', 'Tilak', 'Gandhi'),
(328, 'General Studies', 'History', 'India got independence in?', '1945', '1946', '1947', '1950', '1947'),
(329, 'General Studies', 'History', 'Republic Day?', 'Jan 26', 'Aug 15', 'Oct 2', 'Nov 14', 'Jan 26'),
(330, 'General Studies', 'History', 'Who was first PM?', 'Nehru', 'Gandhi', 'Patel', 'Rajaji', 'Nehru'),
(331, 'General Studies', 'History', 'Who was first President?', 'Rajendra Prasad', 'Radhakrishnan', 'Zakir Hussain', 'Nehru', 'Rajendra Prasad'),
(332, 'General Studies', 'History', 'Who built Red Fort?', 'Akbar', 'Shah Jahan', 'Aurangzeb', 'Babur', 'Shah Jahan'),
(333, 'General Studies', 'History', 'Who was known as Iron Man?', 'Patel', 'Nehru', 'Gandhi', 'Bose', 'Patel'),
(334, 'General Studies', 'History', 'Partition of Bengal?', '1905', '1919', '1920', '1942', '1905'),
(335, 'General Studies', 'History', 'Who started Swadeshi movement?', 'Tilak', 'Gandhi', 'Bose', 'Nehru', 'Tilak'),
(336, 'General Studies', 'History', 'Who was Viceroy during independence?', 'Mountbatten', 'Curzon', 'Irwin', 'Dalhousie', 'Mountbatten'),
(337, 'General Studies', 'History', 'Who gave slogan Jai Hind?', 'Gandhi', 'Nehru', 'Bose', 'Patel', 'Bose'),
(338, 'General Studies', 'History', 'Who is known as Nightingale of India?', 'Sarojini Naidu', 'Indira Gandhi', 'Annie Besant', 'Kamaladevi', 'Sarojini Naidu'),
(339, 'General Studies', 'History', 'Who founded Arya Samaj?', 'Dayananda Saraswati', 'Raja Ram Mohan Roy', 'Vivekananda', 'Tilak', 'Dayananda Saraswati'),
(340, 'General Studies', 'History', 'Who abolished Sati?', 'Raja Ram Mohan Roy', 'Gandhi', 'Tilak', 'Nehru', 'Raja Ram Mohan Roy'),
(341, 'General Studies', 'History', 'Who founded Ramakrishna Mission?', 'Vivekananda', 'Dayananda', 'Tilak', 'Gandhi', 'Vivekananda'),
(342, 'General Studies', 'History', 'Who was first woman Governor?', 'Sarojini Naidu', 'Indira Gandhi', 'Annie Besant', 'None', 'Sarojini Naidu'),
(343, 'General Studies', 'History', 'Who was first woman PM?', 'Indira Gandhi', 'Sarojini Naidu', 'Annie Besant', 'None', 'Indira Gandhi'),
(344, 'General Studies', 'History', 'Who built Fatehpur Sikri?', 'Akbar', 'Shah Jahan', 'Babur', 'Humayun', 'Akbar'),
(345, 'General Studies', 'History', 'Who was known as Grand Old Man of India?', 'Dadabhai Naoroji', 'Tilak', 'Gandhi', 'Nehru', 'Dadabhai Naoroji'),
(346, 'General Studies', 'General Science', 'Unit of force?', 'Newton', 'Joule', 'Watt', 'Pascal', 'Newton'),
(347, 'General Studies', 'General Science', 'Speed of light?', '3x10^8 m/s', '3x10^6 m/s', '3x10^5 m/s', '3x10^7 m/s', '3x10^8 m/s'),
(348, 'General Studies', 'General Science', 'SI unit of energy?', 'Watt', 'Joule', 'Newton', 'Volt', 'Joule'),
(349, 'General Studies', 'General Science', 'Which force pulls objects to Earth?', 'Magnetic', 'Gravitational', 'Friction', 'Electric', 'Gravitational'),
(350, 'General Studies', 'General Science', 'Unit of power?', 'Joule', 'Watt', 'Newton', 'Volt', 'Watt'),
(351, 'General Studies', 'General Science', 'Sound travels in?', 'Solid', 'Liquid', 'Gas', 'All', 'All'),
(352, 'General Studies', 'General Science', 'Which is fastest?', 'Sound', 'Light', 'Wind', 'Water', 'Light'),
(353, 'General Studies', 'General Science', 'Unit of temperature?', 'Celsius', 'Kelvin', 'Fahrenheit', 'All', 'All'),
(354, 'General Studies', 'General Science', 'Water formula?', 'H2O', 'CO2', 'O2', 'NaCl', 'H2O'),
(355, 'General Studies', 'General Science', 'Which gas for breathing?', 'Oxygen', 'Nitrogen', 'CO2', 'Hydrogen', 'Oxygen'),
(356, 'General Studies', 'General Science', 'Which gas for photosynthesis?', 'Oxygen', 'CO2', 'Hydrogen', 'Nitrogen', 'CO2'),
(357, 'General Studies', 'General Science', 'Acid turns blue litmus?', 'Red', 'Blue', 'Green', 'Yellow', 'Red'),
(358, 'General Studies', 'General Science', 'Base turns red litmus?', 'Blue', 'Red', 'Green', 'Yellow', 'Blue'),
(359, 'General Studies', 'General Science', 'pH value of neutral?', '7', '5', '9', '1', '7'),
(360, 'General Studies', 'General Science', 'Which is acid?', 'HCl', 'NaOH', 'KOH', 'CaO', 'HCl'),
(361, 'General Studies', 'General Science', 'Which is base?', 'NaOH', 'HCl', 'CO2', 'H2O', 'NaOH'),
(362, 'General Studies', 'General Science', 'Which is metal?', 'Oxygen', 'Iron', 'Carbon', 'Sulphur', 'Iron'),
(363, 'General Studies', 'General Science', 'Which is non-metal?', 'Iron', 'Copper', 'Carbon', 'Aluminium', 'Carbon'),
(364, 'General Studies', 'General Science', 'Human heart chambers?', '2', '3', '4', '5', '4'),
(365, 'General Studies', 'General Science', 'Blood color due to?', 'Plasma', 'Hemoglobin', 'Platelets', 'Cells', 'Hemoglobin'),
(366, 'General Studies', 'General Science', 'Largest organ?', 'Heart', 'Liver', 'Skin', 'Brain', 'Skin'),
(367, 'General Studies', 'General Science', 'Brain controls?', 'Body', 'Heart', 'Lungs', 'None', 'Body'),
(368, 'General Studies', 'General Science', 'Unit of heredity?', 'Cell', 'Gene', 'DNA', 'Chromosome', 'Gene'),
(369, 'General Studies', 'General Science', 'Father of genetics?', 'Mendel', 'Darwin', 'Newton', 'Einstein', 'Mendel'),
(370, 'General Studies', 'General Science', 'Photosynthesis occurs in?', 'Roots', 'Stem', 'Leaves', 'Flowers', 'Leaves'),
(371, 'General Studies', 'General Science', 'Green pigment?', 'Chlorophyll', 'Hemoglobin', 'Melanin', 'Carotene', 'Chlorophyll');
INSERT INTO `questions` (`id`, `subject`, `topic`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(372, 'General Studies', 'General Science', 'Which vitamin from sunlight?', 'A', 'B', 'C', 'D', 'D'),
(373, 'General Studies', 'General Science', 'Deficiency causes scurvy?', 'Vitamin A', 'B', 'C', 'D', 'C'),
(374, 'General Studies', 'General Science', 'Deficiency causes rickets?', 'A', 'B', 'C', 'D', 'D'),
(375, 'General Studies', 'General Science', 'Which organ purifies blood?', 'Heart', 'Kidney', 'Lungs', 'Brain', 'Kidney'),
(376, 'General Studies', 'General Science', 'Which part helps breathing?', 'Heart', 'Lungs', 'Kidney', 'Brain', 'Lungs'),
(377, 'General Studies', 'General Science', 'Which is communicable disease?', 'Diabetes', 'Cancer', 'COVID-19', 'BP', 'COVID-19'),
(378, 'General Studies', 'General Science', 'Which is non-communicable?', 'Flu', 'COVID', 'Diabetes', 'Malaria', 'Diabetes'),
(379, 'General Studies', 'General Science', 'Malaria caused by?', 'Virus', 'Bacteria', 'Protozoa', 'Fungus', 'Protozoa'),
(380, 'General Studies', 'General Science', 'Malaria spreads by?', 'Air', 'Water', 'Mosquito', 'Food', 'Mosquito'),
(381, 'General Studies', 'General Science', 'COVID-19 caused by?', 'Bacteria', 'Virus', 'Fungus', 'Protozoa', 'Virus'),
(382, 'General Studies', 'General Science', 'Which is vaccine?', 'Medicine', 'Prevention', 'Food', 'None', 'Prevention'),
(383, 'General Studies', 'General Science', 'Which gas used in balloons?', 'Oxygen', 'Helium', 'CO2', 'Nitrogen', 'Helium'),
(384, 'General Studies', 'General Science', 'Which is fuel?', 'Water', 'Petrol', 'Sand', 'Air', 'Petrol'),
(385, 'General Studies', 'General Science', 'Which is renewable energy?', 'Coal', 'Petrol', 'Solar', 'Gas', 'Solar'),
(386, 'General Studies', 'General Science', 'Which is non-renewable?', 'Wind', 'Solar', 'Coal', 'Water', 'Coal'),
(387, 'General Studies', 'General Science', 'Which instrument measures temperature?', 'Barometer', 'Thermometer', 'Hygrometer', 'Altimeter', 'Thermometer'),
(388, 'General Studies', 'General Science', 'Which measures pressure?', 'Thermometer', 'Barometer', 'Hygrometer', 'None', 'Barometer'),
(389, 'General Studies', 'General Science', 'Which measures humidity?', 'Barometer', 'Thermometer', 'Hygrometer', 'None', 'Hygrometer'),
(390, 'General Studies', 'General Science', 'Which is smallest unit of matter?', 'Atom', 'Cell', 'Molecule', 'Electron', 'Atom'),
(391, 'General Studies', 'General Science', 'Which is largest organ system?', 'Nervous', 'Digestive', 'Circulatory', 'Skeletal', 'Skeletal'),
(392, 'General Studies', 'General Science', 'Which vitamin for eyes?', 'A', 'B', 'C', 'D', 'A'),
(393, 'General Studies', 'General Science', 'Which organ pumps blood?', 'Brain', 'Heart', 'Lungs', 'Kidney', 'Heart'),
(394, 'General Studies', 'General Science', 'Which is digestive organ?', 'Lungs', 'Stomach', 'Heart', 'Kidney', 'Stomach'),
(395, 'General Studies', 'Current Affairs', 'Who is the current Prime Minister of India?', 'Rahul Gandhi', 'Narendra Modi', 'Amit Shah', 'Rajnath Singh', 'Narendra Modi'),
(396, 'General Studies', 'Current Affairs', 'Who is the President of India (recent)?', 'Droupadi Murmu', 'Ram Nath Kovind', 'Pranab Mukherjee', 'APJ Abdul Kalam', 'Droupadi Murmu'),
(397, 'General Studies', 'Current Affairs', 'G20 Summit 2023 held in?', 'USA', 'India', 'UK', 'France', 'India'),
(398, 'General Studies', 'Current Affairs', 'India hosted G20 summit in which city?', 'Delhi', 'Mumbai', 'Chennai', 'Kolkata', 'Delhi'),
(399, 'General Studies', 'Current Affairs', 'Which mission is for digital India?', 'Digital India', 'Make in India', 'Startup India', 'Skill India', 'Digital India'),
(400, 'General Studies', 'Current Affairs', 'Which scheme is for clean India?', 'Swachh Bharat', 'Make in India', 'Startup India', 'PMAY', 'Swachh Bharat'),
(401, 'General Studies', 'Current Affairs', 'Which scheme is for manufacturing?', 'Make in India', 'Digital India', 'Swachh Bharat', 'PMAY', 'Make in India'),
(402, 'General Studies', 'Current Affairs', 'Chandrayaan-3 mission belongs to?', 'ISRO', 'NASA', 'ESA', 'Roscosmos', 'ISRO'),
(403, 'General Studies', 'Current Affairs', 'India landed on Moon in?', '2022', '2023', '2024', '2021', '2023'),
(404, 'General Studies', 'Current Affairs', 'Aditya L1 mission studies?', 'Moon', 'Sun', 'Mars', 'Earth', 'Sun'),
(405, 'General Studies', 'Current Affairs', 'Which is India’s space agency?', 'NASA', 'ISRO', 'ESA', 'CNSA', 'ISRO'),
(406, 'General Studies', 'Current Affairs', 'Which country hosted Olympics 2021?', 'China', 'Japan', 'USA', 'UK', 'Japan'),
(407, 'General Studies', 'Current Affairs', 'Capital of Ukraine?', 'Kyiv', 'Moscow', 'Warsaw', 'Berlin', 'Kyiv'),
(408, 'General Studies', 'Current Affairs', 'Currency of Japan?', 'Yen', 'Dollar', 'Euro', 'Rupee', 'Yen'),
(409, 'General Studies', 'Current Affairs', 'Who won Cricket World Cup 2023?', 'Australia', 'India', 'England', 'Pakistan', 'Australia'),
(410, 'General Studies', 'Current Affairs', 'Which country hosted Cricket World Cup 2023?', 'India', 'Australia', 'England', 'South Africa', 'India'),
(411, 'General Studies', 'Current Affairs', 'Who is known as Missile Man of India?', 'APJ Abdul Kalam', 'Vikram Sarabhai', 'Homi Bhabha', 'Satish Dhawan', 'APJ Abdul Kalam'),
(412, 'General Studies', 'Current Affairs', 'Which award is highest civilian award?', 'Padma Shri', 'Padma Bhushan', 'Padma Vibhushan', 'Bharat Ratna', 'Bharat Ratna'),
(413, 'General Studies', 'Current Affairs', 'Which is highest gallantry award?', 'Param Vir Chakra', 'Ashok Chakra', 'Vir Chakra', 'Kirti Chakra', 'Param Vir Chakra'),
(414, 'General Studies', 'Current Affairs', 'Which day is Independence Day?', 'Aug 15', 'Jan 26', 'Oct 2', 'Nov 14', 'Aug 15'),
(415, 'General Studies', 'Current Affairs', 'Republic Day?', 'Jan 26', 'Aug 15', 'Oct 2', 'Nov 14', 'Jan 26'),
(416, 'General Studies', 'Current Affairs', 'Gandhi Jayanti?', 'Oct 2', 'Jan 30', 'Aug 15', 'Jan 26', 'Oct 2'),
(417, 'General Studies', 'Current Affairs', 'Which is women empowerment scheme?', 'Beti Bachao', 'MGNREGA', 'PMAY', 'None', 'Beti Bachao'),
(418, 'General Studies', 'Current Affairs', 'Which scheme is for bank account?', 'Jan Dhan', 'PMAY', 'MGNREGA', 'None', 'Jan Dhan'),
(419, 'General Studies', 'Current Affairs', 'Which scheme is for farmers?', 'PM-Kisan', 'PMAY', 'Jan Dhan', 'None', 'PM-Kisan'),
(420, 'General Studies', 'Current Affairs', 'Which scheme is for housing?', 'PMAY', 'MGNREGA', 'Jan Dhan', 'None', 'PMAY'),
(421, 'General Studies', 'Current Affairs', 'Which is international organization?', 'UNO', 'RBI', 'SEBI', 'LIC', 'UNO'),
(422, 'General Studies', 'Current Affairs', 'UNO headquarters?', 'New York', 'London', 'Paris', 'Delhi', 'New York'),
(423, 'General Studies', 'Current Affairs', 'WHO deals with?', 'Health', 'Finance', 'Trade', 'Defense', 'Health'),
(424, 'General Studies', 'Current Affairs', 'World Environment Day?', 'June 5', 'July 5', 'Aug 5', 'May 5', 'June 5'),
(425, 'General Studies', 'Current Affairs', 'World Health Day?', 'April 7', 'May 7', 'June 7', 'July 7', 'April 7'),
(426, 'General Studies', 'Current Affairs', 'International Women’s Day?', 'March 8', 'Feb 8', 'Jan 8', 'April 8', 'March 8'),
(427, 'General Studies', 'Current Affairs', 'Which is digital payment?', 'UPI', 'Cash', 'Cheque', 'None', 'UPI'),
(428, 'General Studies', 'Current Affairs', 'Which is Aadhaar?', 'ID', 'Bank', 'Scheme', 'None', 'ID'),
(429, 'General Studies', 'Current Affairs', 'Which is GST type?', 'Indirect tax', 'Direct tax', 'Income tax', 'None', 'Indirect tax'),
(430, 'General Studies', 'Current Affairs', 'Which is electric car company?', 'Tesla', 'Ford', 'BMW', 'All', 'All'),
(431, 'General Studies', 'Current Affairs', 'Which is green energy?', 'Solar', 'Coal', 'Petrol', 'Diesel', 'Solar'),
(432, 'General Studies', 'Current Affairs', 'Which is climate issue?', 'Global warming', 'Cooling', 'Rain', 'None', 'Global warming'),
(433, 'General Studies', 'Current Affairs', 'Which is social media?', 'Facebook', 'TV', 'Radio', 'Newspaper', 'Facebook'),
(434, 'General Studies', 'Current Affairs', 'Which is search engine?', 'Google', 'Facebook', 'WhatsApp', 'Instagram', 'Google'),
(435, 'General Studies', 'Current Affairs', 'Which app for messaging?', 'WhatsApp', 'Google', 'YouTube', 'Chrome', 'WhatsApp'),
(436, 'General Studies', 'Current Affairs', 'Which is video platform?', 'YouTube', 'Google', 'Facebook', 'Twitter', 'YouTube'),
(437, 'General Studies', 'Current Affairs', 'Which is Indian currency symbol?', '₹', '$', '€', '¥', '₹'),
(438, 'General Studies', 'Current Affairs', 'Which is budget month?', 'February', 'March', 'April', 'May', 'February'),
(439, 'General Studies', 'Current Affairs', 'Which is space mission?', 'Chandrayaan', 'Apollo', 'Mars', 'All', 'All'),
(440, 'General Studies', 'Current Affairs', 'Which is AI tool?', 'ChatGPT', 'Google', 'TV', 'Radio', 'ChatGPT'),
(441, 'General Studies', 'Current Affairs', 'Which is Indian festival?', 'Diwali', 'Christmas', 'Eid', 'All', 'All'),
(442, 'General Studies', 'Current Affairs', 'Which is national animal?', 'Tiger', 'Lion', 'Elephant', 'Dog', 'Tiger'),
(443, 'Aptitude', 'Simplification', '10 + 20 × 2 = ?', '30', '40', '50', '60', '50'),
(444, 'Aptitude', 'Simplification', '100 ÷ 5 × 2 = ?', '20', '30', '40', '50', '40'),
(445, 'Aptitude', 'Simplification', '25 + 25 ÷ 5 = ?', '30', '35', '40', '45', '30'),
(446, 'Aptitude', 'Percentage', '20% of 150 = ?', '20', '25', '30', '35', '30'),
(447, 'Aptitude', 'Percentage', '50% of 80 = ?', '20', '30', '40', '50', '40'),
(448, 'Aptitude', 'Percentage', '10% of 500 = ?', '40', '50', '60', '70', '50'),
(449, 'Aptitude', 'Ratio', 'Ratio of 2:4 = ?', '1:2', '2:1', '4:2', '3:2', '1:2'),
(450, 'Aptitude', 'Ratio', 'Divide 100 in ratio 2:3', '40,60', '50,50', '60,40', '30,70', '40,60'),
(451, 'Aptitude', 'Time and Work', 'If A completes work in 10 days, 1 day work=?', '1/5', '1/10', '1/15', '1/20', '1/10'),
(452, 'Aptitude', 'Time and Work', 'A can do work in 5 days, B in 10 days. Together?', '2 days', '3 days', '4 days', '6 days', '3 days'),
(453, 'Aptitude', 'Profit and Loss', 'CP=100, SP=120, Profit=?', '10', '15', '20', '25', '20'),
(454, 'Aptitude', 'Profit and Loss', 'CP=200, SP=150, Loss=?', '25', '30', '40', '50', '50'),
(455, 'Aptitude', 'Interest', 'SI for 1000 at 10% for 2 years?', '100', '150', '200', '250', '200'),
(456, 'Aptitude', 'Interest', 'SI for 500 at 5% for 2 years?', '25', '50', '75', '100', '50'),
(457, 'Aptitude', 'Average', 'Average of 2,4,6,8 = ?', '4', '5', '6', '7', '5'),
(458, 'Aptitude', 'Average', 'Average of 10,20,30 = ?', '15', '20', '25', '30', '20'),
(459, 'Aptitude', 'Number System', 'Smallest prime number?', '1', '2', '3', '5', '2'),
(460, 'Aptitude', 'Number System', 'Even number?', '3', '5', '8', '9', '8'),
(461, 'Aptitude', 'LCM & HCF', 'LCM of 4 and 6 = ?', '6', '12', '18', '24', '12'),
(462, 'Aptitude', 'LCM & HCF', 'HCF of 12 and 18 = ?', '3', '6', '9', '12', '6'),
(463, 'Aptitude', 'Simplification', '15 × 2 + 10 = ?', '30', '35', '40', '45', '40'),
(464, 'Aptitude', 'Percentage', '25% of 200 = ?', '25', '40', '50', '60', '50'),
(465, 'Aptitude', 'Time', '60 km in 2 hrs speed=?', '20', '30', '40', '50', '30'),
(466, 'Aptitude', 'Time', 'Distance=Speed×Time formula?', 'Yes', 'No', 'Maybe', 'None', 'Yes'),
(467, 'Aptitude', 'Simplification', '30 + 40 ÷ 5 = ?', '34', '36', '38', '40', '38'),
(468, 'Aptitude', 'Simplification', '50 - 10 × 2 = ?', '20', '25', '30', '40', '30'),
(469, 'Aptitude', 'Simplification', '80 ÷ 4 + 6 = ?', '20', '22', '24', '26', '26'),
(470, 'Aptitude', 'Percentage', '15% of 200 = ?', '20', '25', '30', '35', '30'),
(471, 'Aptitude', 'Percentage', '40% of 250 = ?', '80', '90', '100', '110', '100'),
(472, 'Aptitude', 'Percentage', '5% of 600 = ?', '20', '25', '30', '35', '30'),
(473, 'Aptitude', 'Ratio', 'Ratio of 3:6 = ?', '1:2', '2:3', '3:2', '2:1', '1:2'),
(474, 'Aptitude', 'Ratio', 'Divide 120 in ratio 1:2', '40,80', '60,60', '30,90', '20,100', '40,80'),
(475, 'Aptitude', 'Time and Work', 'A completes work in 8 days, 1 day work=?', '1/6', '1/7', '1/8', '1/9', '1/8'),
(476, 'Aptitude', 'Time and Work', 'A can do in 6 days, B in 3 days, together?', '2 days', '3 days', '4 days', '5 days', '2 days'),
(477, 'Aptitude', 'Profit and Loss', 'CP=150, SP=180, Profit=?', '20', '25', '30', '35', '30'),
(478, 'Aptitude', 'Profit and Loss', 'CP=500, SP=450, Loss=?', '30', '40', '50', '60', '50'),
(479, 'Aptitude', 'Interest', 'SI for 2000 at 5% for 1 year?', '50', '100', '150', '200', '100'),
(480, 'Aptitude', 'Interest', 'SI for 800 at 10% for 2 years?', '120', '140', '160', '180', '160'),
(481, 'Aptitude', 'Average', 'Average of 5,10,15 = ?', '8', '10', '12', '15', '10'),
(482, 'Aptitude', 'Average', 'Average of 3,6,9,12 = ?', '6', '7', '8', '9', '7.5'),
(483, 'Aptitude', 'Number System', 'Odd number?', '2', '4', '6', '7', '7'),
(484, 'Aptitude', 'Number System', 'Next prime after 5?', '6', '7', '8', '9', '7'),
(485, 'Aptitude', 'LCM & HCF', 'LCM of 3 and 5 = ?', '10', '12', '15', '20', '15'),
(486, 'Aptitude', 'LCM & HCF', 'HCF of 8 and 12 = ?', '2', '4', '6', '8', '4'),
(487, 'Aptitude', 'Time', 'Speed = Distance/Time formula?', 'Yes', 'No', 'Maybe', 'None', 'Yes'),
(488, 'Aptitude', 'Time', 'Distance covered in 3 hrs at 20 km/hr?', '40', '50', '60', '70', '60'),
(489, 'Aptitude', 'Simplification', '100 - 25 × 2 = ?', '50', '60', '70', '80', '50'),
(490, 'Aptitude', 'Percentage', '75% of 400 = ?', '200', '250', '300', '350', '300'),
(491, 'General Tamil / General English', 'Grammar', 'கீழ்கண்டவற்றில் பெயர்ச்சொல் எது?', 'ஓடு', 'பால்', 'அழகு', 'ஓடுகிறது', 'பால்');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `time_taken` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `student_id`, `score`, `test_date`, `time_taken`) VALUES
(12, 1, 16, '2026-04-02', 2.23),
(13, 1, 17, '2026-04-02', 2.23),
(14, 1, 14, '2026-04-04', 2.48),
(15, 1, 14, '2026-04-04', 2.48);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `password`) VALUES
(1, 'sai', 'sai123@gmail.com', 'scrypt:32768:8:1$TMGKzihvi7OOQhF3$969527fa8ee83d9e812e74f33fea69bf945619014c6cc4f9cc88fc8af6f2218509296189611a346a51dd436a27b961b917639e5dcd88611c0c51d67b3a65ba0d'),
(8, 'Kumar', 'kumar123@gmail.com', 'scrypt:32768:8:1$Gi0p1RxJpUx7Trqc$9419c5ec16d319c13995d5255de3e9509e6befdd50324fc3a6cd3af125f97488711c3de9919c65632aec6cfc3bf25e9797c08174e18267cd6a0320b906a089e0'),
(9, 'uma', 'uma123@gmail.com', 'scrypt:32768:8:1$WdIQyuYJqfrniDnQ$9d507073bc8a13f45cacb6c2f9f76670e6ec9f91655eed277dedffc69f1d84d229b33e840c144df1f20b835ec2700c0ef8ff290a4adc954aed38f177030126d2'),
(10, 'yuga', 'yuga123@gmail.com', 'scrypt:32768:8:1$vOfpy3aTVqbItFqv$2a7de2bcd4238a9d99f544d9fc013641819b0fb971eda46db7dfd67d44e2293c594eb8d871bfb6646b6cc682156a011f41da5724376ed7d95efba65a7af1c205'),
(11, 'nila', 'nila123@gmail.com', 'scrypt:32768:8:1$POgWjQfMki14toM3$99200e146948d0631ea92b247111c8701fefebe58c5327851b48d961fe34cc30aeb5872e2e7b23695e5c263b06f842bff74be20ceb192434b89bd1dba70f9e9a');

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

CREATE TABLE `syllabus` (
  `id` int(11) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `topic` varchar(100) DEFAULT NULL,
  `subtopic` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `syllabus`
--

INSERT INTO `syllabus` (`id`, `subject`, `topic`, `subtopic`) VALUES
(1, 'General Tamil / General English', 'Grammar', 'Noun'),
(2, 'General Tamil / General English', 'Grammar', 'Verb'),
(3, 'General Tamil / General English', 'Grammar', 'Adjective'),
(4, 'General Tamil / General English', 'Grammar', 'Tense'),
(5, 'General Tamil / General English', 'Grammar', 'Articles'),
(6, 'General Tamil / General English', 'Literature', 'Important Authors'),
(7, 'General Tamil / General English', 'Literature', 'Literary Works'),
(8, 'General Tamil / General English', 'Literature', 'Poems'),
(9, 'General Tamil / General English', 'Comprehension', 'Passage Reading'),
(10, 'General Tamil / General English', 'Comprehension', 'Synonyms & Antonyms'),
(11, 'General Studies', 'Indian Polity', 'Constitution of India'),
(12, 'General Studies', 'Indian Polity', 'Fundamental Rights'),
(13, 'General Studies', 'Indian Polity', 'Directive Principles'),
(14, 'General Studies', 'Indian Polity', 'Parliament & State Legislature'),
(15, 'General Studies', 'Indian Polity', 'Judiciary'),
(16, 'General Studies', 'Indian Economy', 'Basic Economics'),
(17, 'General Studies', 'Indian Economy', 'Five Year Plans'),
(18, 'General Studies', 'Indian Economy', 'Agriculture'),
(19, 'General Studies', 'Indian Economy', 'Industrial Development'),
(20, 'General Studies', 'Indian Economy', 'National Income'),
(21, 'General Studies', 'Geography', 'Physical Features of India'),
(22, 'General Studies', 'Geography', 'Climate'),
(23, 'General Studies', 'Geography', 'Soil Types'),
(24, 'General Studies', 'Geography', 'Natural Resources'),
(25, 'General Studies', 'Geography', 'Tamil Nadu Geography'),
(26, 'General Studies', 'History', 'Ancient India'),
(27, 'General Studies', 'History', 'Medieval India'),
(28, 'General Studies', 'History', 'Modern India'),
(29, 'General Studies', 'History', 'Indian National Movement'),
(30, 'General Studies', 'History', 'Tamil Nadu History'),
(31, 'General Studies', 'General Science', 'Physics (Motion, Force, Energy)'),
(32, 'General Studies', 'General Science', 'Chemistry (Elements, Compounds)'),
(33, 'General Studies', 'General Science', 'Biology (Plants, Human Body)'),
(34, 'General Studies', 'Current Affairs', 'National News'),
(35, 'General Studies', 'Current Affairs', 'International News'),
(36, 'General Studies', 'Current Affairs', 'Sports'),
(37, 'General Studies', 'Current Affairs', 'Awards'),
(38, 'General Studies', 'Current Affairs', 'Government Schemes'),
(39, 'Aptitude & Mental Ability', 'Arithmetic', 'Percentage'),
(40, 'Aptitude & Mental Ability', 'Arithmetic', 'Profit & Loss'),
(41, 'Aptitude & Mental Ability', 'Arithmetic', 'Ratio & Proportion'),
(42, 'Aptitude & Mental Ability', 'Arithmetic', 'Time & Work'),
(43, 'Aptitude & Mental Ability', 'Reasoning', 'Number Series'),
(44, 'Aptitude & Mental Ability', 'Reasoning', 'Coding-Decoding'),
(45, 'Aptitude & Mental Ability', 'Reasoning', 'Blood Relation'),
(46, 'Aptitude & Mental Ability', 'Reasoning', 'Direction Sense');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionpaper`
--
ALTER TABLE `questionpaper`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syllabus`
--
ALTER TABLE `syllabus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `questionpaper`
--
ALTER TABLE `questionpaper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=494;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `syllabus`
--
ALTER TABLE `syllabus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
