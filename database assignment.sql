create database sutdents;
use sutdents;
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Email VARCHAR(100) UNIQUE,
    PhoneNumber VARCHAR(15),
    Address TEXT,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Email VARCHAR(100) UNIQUE,
    PhoneNumber VARCHAR(15),
    Address TEXT,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Credits INT,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    OfficeLocation VARCHAR(100)
);

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    ClassID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (ClassID) REFERENCES Classes(ClassID)
);
CREATE TABLE Professors (
    ProfessorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    PhoneNumber VARCHAR(15),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    CourseID INT,
    ProfessorID INT,
    Semester VARCHAR(10),
    Schedule VARCHAR(50),
    ClassroomID INT,
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID),
    FOREIGN KEY (ProfessorID) REFERENCES Professors(ProfessorID),
    FOREIGN KEY (ClassroomID) REFERENCES Classrooms(ClassroomID)
);

CREATE TABLE Assignments (
    AssignmentID INT PRIMARY KEY,
    ClassID INT,
    AssignmentTitle VARCHAR(100),
    Description TEXT,
    DueDate DATE,
    FOREIGN KEY (ClassID) REFERENCES Classes(ClassID)
);

CREATE TABLE Grades (
    GradeID INT PRIMARY KEY,
    EnrollmentID INT,
    AssignmentID INT,
    Grade CHAR(1),
    FOREIGN KEY (EnrollmentID) REFERENCES Enrollments(EnrollmentID),
    FOREIGN KEY (AssignmentID) REFERENCES Assignments(AssignmentID)
);

CREATE TABLE Advisors (
    AdvisorID INT PRIMARY KEY,
    StudentID INT,
    ProfessorID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (ProfessorID) REFERENCES Professors(ProfessorID)
);

CREATE TABLE Classrooms (
    ClassroomID INT PRIMARY KEY,
    RoomNumber VARCHAR(10),
    Building VARCHAR(50),
    Capacity INT
);
 




