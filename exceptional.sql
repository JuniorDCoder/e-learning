-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2023 at 06:58 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exceptional`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `admin_mail` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profilePic` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `admin_mail`, `password`, `profilePic`, `type`) VALUES
(4, 'Foryoung Junior Ngu', 'foryoungjuniorngu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '1682685581.jpg', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `postContent` text NOT NULL,
  `postDate` varchar(20) NOT NULL,
  `admin` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` text NOT NULL,
  `post` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `postContent`, `postDate`, `admin`, `title`, `status`, `post`) VALUES
(2, '', 'April 28, 2023', 4, 'Demo Video Of Team HealthEase Project', 'video', 'https://youtu.be/Hns6UR7ie_I');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categorie` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categorie`) VALUES
(1, 'Computer Science Introduction');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `courseId` int(11) NOT NULL,
  `lectureName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `content`, `courseId`, `lectureName`) VALUES
(1, '<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:24px\"><span style=\"color:#4e5f70\">Object Oriented Programming Intermediate</span></span></p>\r\n\r\n<p>Object-oriented programming &ndash; As the name suggests uses objects in programming. Object-oriented programming aims to implement real-world entities like inheritance, hiding, polymorphism, etc. in programming. The main aim of OOP is to bind together the data and the functions that operate on them so that no other part of the code can access this data except that function.</p>\r\n\r\n<p>There are some basic concepts that act as the building blocks of OOPs i.e.</p>\r\n\r\n<ol>\r\n	<li>Class</li>\r\n	<li>Objects</li>\r\n	<li>Encapsulation</li>\r\n	<li>Abstraction</li>\r\n	<li>Polymorphism</li>\r\n	<li>Inheritance</li>\r\n	<li>Dynamic Binding</li>\r\n	<li>Message Passing</li>\r\n</ol>\r\n\r\n<h2><strong>Characteristics of an Object-Oriented Programming Language</strong></h2>\r\n\r\n<p><img alt=\"OOPS Concept in C++\" src=\"https://media.geeksforgeeks.org/wp-content/uploads/OOPs-Concepts.jpg\" />&nbsp;</p>\r\n\r\n<h2><strong>Class</strong></h2>\r\n\r\n<p>The building block of C++ that leads to Object-Oriented programming is a Class. It is a user-defined data type, which holds its own data members and member functions, which can be accessed and used by creating an instance of that class. A class is like a blueprint for an object. For Example: Consider the Class of Cars. There may be many cars with different names and brands but all of them will share some common properties like all of them will have 4 wheels, Speed Limit, Mileage range, etc. So here, the Car is the class, and wheels, speed limits, and mileage are their properties.</p>\r\n\r\n<ul>\r\n	<li>A Class is a user-defined data type that has data members and member functions.</li>\r\n	<li>Data members are the data variables and member functions are the functions used to manipulate these variables together these data members and member functions define the properties and behavior of the objects in a Class.</li>\r\n	<li>In the above example of class Car, the data member will be speed limit, mileage, etc and member functions can apply brakes, increase speed, etc.</li>\r\n</ul>\r\n\r\n<p>We can say that a&nbsp;<strong>Class in C++</strong>&nbsp;is a blueprint representing a group of objects which shares some common properties and behaviors.</p>\r\n\r\n<h2><strong>Object</strong></h2>\r\n\r\n<p>An Object is an identifiable entity with some characteristics and behavior. An Object is an instance of a Class. When a class is defined, no memory is allocated but when it is instantiated (i.e. an object is created) memory is allocated.</p>\r\n\r\n<ul>\r\n	<li>C++</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><code>// C++ Program to show the syntax/working of Objects as a</code></p>\r\n\r\n			<p><code>// part of Object Oriented PProgramming</code></p>\r\n\r\n			<p><code>#include &lt;iostream&gt;</code></p>\r\n\r\n			<p><code>using</code> <code>namespace</code> <code>std;</code></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><code>class</code> <code>person {</code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>char</code> <code>name[20];</code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>int</code> <code>id;</code></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><code>public</code><code>:</code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>void</code> <code>getdetails() {}</code></p>\r\n\r\n			<p><code>};</code></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><code>int</code> <code>main()</code></p>\r\n\r\n			<p><code>{</code></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>person p1; </code><code>// p1 is a object</code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>return</code> <code>0;</code></p>\r\n\r\n			<p><code>}</code></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Objects take up space in memory and have an associated address like a record in pascal or structure or union. When a program is executed the objects interact by sending messages to one another. Each object contains data and code to manipulate the data. Objects can interact without having to know details of each other&rsquo;s data or code, it is sufficient to know the type of message accepted and the type of response returned by the objects.</p>\r\n\r\n<p>To know more about C++ Objects and Classes, refer to this article &ndash;&nbsp;<a href=\"https://www.geeksforgeeks.org/c-classes-and-objects/\">C++ Classes and Objects</a></p>\r\n\r\n<h2><strong>Encapsulation</strong></h2>\r\n\r\n<p>In normal terms, Encapsulation is defined as wrapping up data and information under a single unit. In Object-Oriented Programming, Encapsulation is defined as binding together the data and the functions that manipulate them. Consider a real-life example of encapsulation, in a company, there are different sections like the accounts section, finance section, sales section, etc. The finance section handles all the financial transactions and keeps records of all the data related to finance. Similarly, the sales section handles all the sales-related activities and keeps records of all the sales. Now there may arise a situation when for some reason an official from the finance section needs all the data about sales in a particular month. In this case, he is not allowed to directly access the data of the sales section. He will first have to contact some other officer in the sales section and then request him to give the particular data. This is what encapsulation is. Here the data of the sales section and the employees that can manipulate them are wrapped under a single name &ldquo;sales section&rdquo;.</p>\r\n\r\n<p><img alt=\"Encapsulation in C++ with Examples\" src=\"https://media.geeksforgeeks.org/wp-content/uploads/Encapsulation-in-C-1.jpg\" /></p>\r\n\r\n<p>Encapsulation in C++</p>\r\n\r\n<p>Encapsulation also leads to&nbsp;<em>data abstraction or data hiding</em>. Using encapsulation also hides the data. In the above example, the data of any of the sections like sales, finance, or accounts are hidden from any other section.</p>\r\n\r\n<p>To know more about encapsulation, refer to this article &ndash;&nbsp;<a href=\"https://www.geeksforgeeks.org/encapsulation-in-cpp/\">Encapsulation in C++</a></p>\r\n\r\n<h2><strong>Abstraction</strong></h2>\r\n\r\n<p>Data abstraction is one of the most essential and important features of object-oriented programming in C++. Abstraction means displaying only essential information and hiding the details. Data abstraction refers to providing only essential information about the data to the outside world, hiding the background details or implementation. Consider a real-life example of a man driving a car. The man only knows that pressing the accelerator will increase the speed of the car or applying brakes will stop the car but he does not know how on pressing the accelerator the speed is actually increasing, he does not know about the inner mechanism of the car or the implementation of an accelerator, brakes, etc. in the car. This is what abstraction is.</p>\r\n\r\n<ul>\r\n	<li><em><strong>Abstraction using Classes</strong></em>: We can implement Abstraction in C++ using classes. The class helps us to group data members and member functions using available access specifiers. A Class can decide which data member will be visible to the outside world and which is not.</li>\r\n	<li><em><strong>Abstraction in Header files</strong></em>: One more type of abstraction in C++ can be header files. For example, consider the pow() method present in math.h header file. Whenever we need to calculate the power of a number, we simply call the function pow() present in the math.h header file and pass the numbers as arguments without knowing the underlying algorithm according to which the function is actually calculating the power of numbers.</li>\r\n</ul>\r\n\r\n<p>To know more about C++ abstraction, refer to this article &ndash;&nbsp;<a href=\"https://www.geeksforgeeks.org/abstraction-in-cpp/\">Abstraction in C++</a></p>\r\n\r\n<h2><strong>Polymorphism</strong></h2>\r\n\r\n<p>The word polymorphism means having many forms. In simple words, we can define polymorphism as the ability of a message to be displayed in more than one form. A person at the same time can have different characteristics. A man at the same time is a father, a husband, and an employee. So the same person possesses different behavior in different situations. This is called polymorphism. An operation may exhibit different behaviors in different instances. The behavior depends upon the types of data used in the operation. C++ supports operator overloading and function overloading.</p>\r\n\r\n<ul>\r\n	<li><em><strong>Operator Overloading</strong></em>: The process of making an operator exhibit different behaviors in different instances is known as operator overloading.</li>\r\n	<li><em><strong>Function Overloading</strong></em>: Function overloading is using a single function name to perform different types of tasks. Polymorphism is extensively used in implementing inheritance.</li>\r\n</ul>\r\n\r\n<p><strong>Example</strong>: Suppose we have to write a function to add some integers, sometimes there are 2 integers, and sometimes there are 3 integers. We can write the Addition Method with the same name having different parameters, the concerned method will be called according to parameters.&nbsp;</p>\r\n\r\n<p><img alt=\"Polymorphism in C++ with Example\" src=\"https://media.geeksforgeeks.org/wp-content/uploads/20220817100454/polymorphismexample-660x460.png\" style=\"width:660px\" /></p>\r\n\r\n<p>Polymorphism in C++</p>\r\n\r\n<p>To know more about polymorphism, refer to this article &ndash;&nbsp;<a href=\"https://www.geeksforgeeks.org/cpp-polymorphism/\">Polymorphism in C++</a></p>\r\n\r\n<h2><strong>Inheritance</strong></h2>\r\n\r\n<p>The capability of a class to derive properties and characteristics from another class is called&nbsp;<a href=\"https://www.geeksforgeeks.org/inheritance-in-c/\">Inheritance</a>. Inheritance is one of the most important features of Object-Oriented Programming.</p>\r\n\r\n<ul>\r\n	<li><strong>Sub Class</strong>: The class that inherits properties from another class is called Sub class or Derived Class.</li>\r\n	<li><strong>Super Class</strong>: The class whose properties are inherited by a sub-class is called Base Class or Superclass.</li>\r\n	<li><strong>Reusability</strong>: Inheritance supports the concept of &ldquo;reusability&rdquo;, i.e. when we want to create a new class and there is already a class that includes some of the code that we want, we can derive our new class from the existing class. By doing this, we are reusing the fields and methods of the existing class.</li>\r\n</ul>\r\n\r\n<p><strong>Example</strong>: Dog, Cat, Cow can be Derived Class of Animal Base Class.&nbsp;</p>\r\n\r\n<p><img alt=\"Inheritance in C++ with Example\" src=\"https://media.geeksforgeeks.org/wp-content/uploads/20220817100609/inheritance-660x454.png\" style=\"width:660px\" /></p>\r\n\r\n<p>Inheritance in C++</p>\r\n\r\n<p>To know more about Inheritance, refer to this article &ndash;&nbsp;<a href=\"https://www.geeksforgeeks.org/inheritance-in-c/\">Inheritance in C++</a></p>\r\n\r\n<h2><strong>Dynamic Binding</strong></h2>\r\n\r\n<p>In dynamic binding, the code to be executed in response to the function call is decided at runtime. C++ has&nbsp;<a href=\"https://www.geeksforgeeks.org/virtual-functions-and-runtime-polymorphism-in-c-set-1-introduction/\">virtual functions</a>&nbsp;to support this. Because dynamic binding is flexible, it avoids the drawbacks of static binding, which connected the function call and definition at build time.</p>\r\n\r\n<p><strong>Example:</strong></p>\r\n\r\n<ul>\r\n	<li>C++</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><code>// C++ Program to Demonstrate the Concept of Dynamic binding</code></p>\r\n\r\n			<p><code>// with the help of virtual function</code></p>\r\n\r\n			<p><code>#include &lt;iostream&gt;</code></p>\r\n\r\n			<p><code>using</code> <code>namespace</code> <code>std;</code></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><code>class</code> <code>GFG {</code></p>\r\n\r\n			<p><code>public</code><code>:</code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>void</code> <code>call_Function() </code><code>// function that call print</code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>{</code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>print();</code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>}</code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>void</code> <code>print() </code><code>// the display function</code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>{</code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>cout &lt;&lt; </code><code>&quot;Printing the Base class Content&quot;</code> <code>&lt;&lt; endl;</code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>}</code></p>\r\n\r\n			<p><code>};</code></p>\r\n\r\n			<p><code>class</code> <code>GFG2 : </code><code>public</code> <code>GFG </code><code>// GFG2 inherit a publicly</code></p>\r\n\r\n			<p><code>{</code></p>\r\n\r\n			<p><code>public</code><code>:</code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>void</code> <code>print() </code><code>// GFG2&#39;s display</code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>{</code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>cout &lt;&lt; </code><code>&quot;Printing the Derived class Content&quot;</code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>&lt;&lt; endl;</code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>}</code></p>\r\n\r\n			<p><code>};</code></p>\r\n\r\n			<p><code>int</code> <code>main()</code></p>\r\n\r\n			<p><code>{</code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>GFG geeksforgeeks; </code><code>// Creating GFG&#39;s pbject</code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>geeksforgeeks.call_Function(); </code><code>// Calling call_Function</code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>GFG2 geeksforgeeks2; </code><code>// creating GFG2 object</code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>geeksforgeeks2.call_Function(); </code><code>// calling call_Function</code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>// for GFG2 object</code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>return</code> <code>0;</code></p>\r\n\r\n			<p><code>}</code></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Output</strong></p>\r\n\r\n<pre>\r\nPrinting the Base class Content\r\nPrinting the Base class Content</pre>\r\n\r\n<p>As we can see, the print() function of the parent class is called even from the derived class object. To resolve this we use virtual functions.</p>\r\n\r\n<h2><strong>Message Passing</strong></h2>\r\n\r\n<p>Objects communicate with one another by sending and receiving information. A message for an object is a request for the execution of a procedure and therefore will invoke a function in the receiving object that generates the desired results. Message passing involves specifying the name of the object, the name of the function, and the information to be sent.</p>\r\n\r\n<p><strong>Related Articles</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.geeksforgeeks.org/c-classes-and-objects/\">Classes and Objects</a></li>\r\n	<li><a href=\"https://www.geeksforgeeks.org/inheritance-in-c/\">Inheritance</a></li>\r\n	<li><a href=\"https://www.geeksforgeeks.org/access-modifiers-in-c/\">Access Modifiers</a></li>\r\n	<li><a href=\"https://www.geeksforgeeks.org/abstraction-in-c/\">Abstraction</a></li>\r\n</ul>\r\n\r\n<p>This article is contributed by&nbsp;<strong>Vankayala Karunakar</strong>. Please write comments if you find anything incorrect, or if you want to share more information about the topic discussed above.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Last Updated :&nbsp;13 Apr, 2023</p>\r\n\r\n<p>1.46k</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Similar Reads</p>\r\n\r\n<p>1.<a href=\"https://www.geeksforgeeks.org/c-partially-object-oriented-language/\" rel=\"bookmark\" title=\"Why C++ is partially Object Oriented Language?\">Why C++ is partially Object Oriented Language?</a></p>\r\n\r\n<p>2.<a href=\"https://www.geeksforgeeks.org/oops-object-oriented-design/\" rel=\"bookmark\" title=\"OOPs | Object Oriented Design\">OOPs | Object Oriented Design</a></p>\r\n\r\n<p>3.<a href=\"https://www.geeksforgeeks.org/can-a-c-class-have-an-object-of-self-type/\" rel=\"bookmark\" title=\"Can a C++ class have an object of self type?\">Can a C++ class have an object of self type?</a></p>\r\n\r\n<p>4.<a href=\"https://www.geeksforgeeks.org/object-slicing-in-c/\" rel=\"bookmark\" title=\"Object Slicing in C++\">Object Slicing in C++</a></p>\r\n\r\n<p>5.<a href=\"https://www.geeksforgeeks.org/preventing-object-copy-in-cpp-3-different-ways/\" rel=\"bookmark\" title=\"Preventing Object Copy in C++ (3 Different Ways)\">Preventing Object Copy in C++ (3 Different Ways)</a></p>\r\n\r\n<p>6.<a href=\"https://www.geeksforgeeks.org/where-is-an-object-stored-if-it-is-created-inside-a-block-in-c/\" rel=\"bookmark\" title=\"Where is an object stored if it is created inside a block in C++?\">Where is an object stored if it is created inside a block in C++?</a></p>\r\n\r\n<p>7.<a href=\"https://www.geeksforgeeks.org/cerr-standard-error-stream-object-in-cpp/\" rel=\"bookmark\" title=\"cerr - Standard Error Stream Object in C++\">cerr - Standard Error Stream Object in C++</a></p>\r\n\r\n<p>8.<a href=\"https://www.geeksforgeeks.org/how-to-add-reference-of-an-object-in-container-classes/\" rel=\"bookmark\" title=\"How to add reference of an object in Container Classes\">How to add reference of an object in Container Classes</a></p>\r\n\r\n<p>9.<a href=\"https://www.geeksforgeeks.org/dynamic-initialization-of-object-in-c/\" rel=\"bookmark\" title=\"Dynamic initialization of object in C++\">Dynamic initialization of object in C++</a></p>\r\n\r\n<p>10.<a href=\"https://www.geeksforgeeks.org/object-delegation-in-cpp/\" rel=\"bookmark\" title=\"Object Delegation in C++\">Object Delegation in C++</a></p>\r\n', 1, 'Object Oriented Programming Intermediate');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `cover` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `categorieId` int(11) NOT NULL,
  `instructorId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `cover`, `description`, `categorieId`, `instructorId`, `bookId`) VALUES
(1, 'Object Oriented Programming', '1682695025.jpeg', 'C++ What is OOP? OOP stands for Object-Oriented Programming. Procedural programming is about writing procedures or functions that perform operations on the data, while object-oriented programming is about creating objects that contain both data and functions.', 1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `categorieId` int(11) NOT NULL,
  `description` text NOT NULL,
  `book` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`id`, `name`, `categorieId`, `description`, `book`, `image`) VALUES
(3, 'Intro to OOP using C plus plus', 1, 'An introduction to the world of programming uisng OOP. Case Study: C++', '1682690103.pdf', '1682690103.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `image` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `mail`, `phone`, `image`, `qualification`, `description`) VALUES
(1, 'Foryoung Junior Ngu', 'foryoungjuniorngu@gmail.com', '677802114', '1682689562.jpg', 'BEng', 'I am a software engineer with passion for solving real life problems using technology. I have a passion for anything digital technology related, enjoy programing and challenge of successful digital experience. I am a skilled web full stack developer with specialty in backend development. I am also a web developer working with The Urega Foundation(urega.org)');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `image`, `qualification`) VALUES
(1, 'Achegnui Juven Tamukum', '1682691812.jpeg', 'BEng'),
(4, 'Team', '1682692058.jpeg', 'BSCS'),
(5, 'Prince kelly', '1682693060.jpeg', 'BEng');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
