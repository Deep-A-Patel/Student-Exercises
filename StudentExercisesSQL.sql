CREATE TABLE Cohort (
    ID INTEGER NOT NULL PRIMARY KEY IDENTITY,
    CohortName VARCHAR(20) NOT NULL
);
​
SELECT * FROM Cohort;
INSERT INTO Cohort (CohortName) VALUES ('Day31');
INSERT INTO Cohort (CohortName) VALUES ('Day32');
INSERT INTO Cohort (CohortName) VALUES ('Day33');
INSERT INTO Cohort (CohortName) VALUES ('Day34');
INSERT INTO Cohort (CohortName) VALUES ('Day35');
​
CREATE TABLE Student (
    ID INTEGER NOT NULL PRIMARY KEY IDENTITY,
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(20) NOT NULL,
    SlackHandle VARCHAR(20) NOT NULL,
    CohortId INTEGER NOT NULL
    CONSTRAINT FK_Student_Cohort FOREIGN KEY(CohortId) REFERENCES Cohort(ID)
);
​
SELECT * FROM Student
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) 
VALUES ('Logan', 'Palmer', 'Logie-Palmie', 1);
​
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) 
VALUES ('Deep', 'Patel', 'Deep-Thinker', 2);
​
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) 
VALUES ('Sean', 'Glavin', 'Sean-ster', 3);
​
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) 
VALUES ('Joey', 'Driscoll', 'Berry-man', 4);
​
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) 
VALUES ('Joel', 'Venable', 'MusicManJoel', 1);
​
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) 
VALUES ('Jason', 'Brooks', 'BrookSource', 2);
​
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) 
VALUES ('Jason', 'Collum', 'DoricCollum', 3);
​
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) 
VALUES ('Dan', 'Storm', 'StormyDaniels', 5);
​
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) 
VALUES ('Logan', 'Palmer', 'Logie-Palmie', 1);
​
​
CREATE TABLE Instructor (
    ID INTEGER NOT NULL PRIMARY KEY IDENTITY,
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(20) NOT NULL,
    SlackHandle VARCHAR(20) NOT NULL,
    CohortId INTEGER NOT NULL,
    InstructorSpecialty VARCHAR(60) NOT NULL,
    CONSTRAINT FK_Instructor_Cohort FOREIGN KEY(CohortID) REFERENCES Cohort(ID)
); 
​
​
INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId, InstructorSpecialty) 
VALUES ('Adam', 'Sheaffer', 'Sheaf-Man', 1, 'Milliner');
​
INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId, InstructorSpecialty) 
VALUES ('Jissie', 'David', '@Jissie', 1, 'Cool Shirts');
​
INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId, InstructorSpecialty) 
VALUES ('Kristen', 'Norris', 'KNo', 1, 'C# Wizard');
​
INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId, InstructorSpecialty) 
VALUES ('Bryan', 'Nielsen', 'Bry-5', 1, 'High 5s');
​
INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId, InstructorSpecialty) 
VALUES ('Brenda', 'Long', 'UBLong', 1, 'Star Wars Jokes');
​
INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId, InstructorSpecialty) 
VALUES ('Robbie', 'Hect', 'SingerCodeWriter', 1, 'Beautiful Songs');
​
CREATE TABLE Exercise (
    ID INTEGER NOT NULL PRIMARY KEY IDENTITY,
    ExerciseName VARCHAR(30) NOT NULL,
    ExerciseLanguage VARCHAR(30) NOT NULL
);
​
​
INSERT INTO Exercise (ExerciseName, ExerciseLanguage) 
VALUES ('Chicken Monkey', 'JavaScript');
​
INSERT INTO Exercise (ExerciseName, ExerciseLanguage) 
VALUES ('Monkey Chicken', 'JavaScript');
​
INSERT INTO Exercise (ExerciseName, ExerciseLanguage) 
VALUES ('CSSuccess', 'JavaScript');
​
INSERT INTO Exercise (ExerciseName, ExerciseLanguage) 
VALUES ('Tribute', 'C#');
​
INSERT INTO Exercise (ExerciseName, ExerciseLanguage) 
VALUES ('stay SHARP', 'C#');
​
INSERT INTO Exercise (ExerciseName, ExerciseLanguage) 
VALUES ('C what I did there', 'C#');
​
INSERT INTO Exercise (ExerciseName, ExerciseLanguage) 
VALUES ('HTMYELL', 'HTML');
​
CREATE TABLE StudentExercise (
    ID INTEGER NOT NULL PRIMARY KEY IDENTITY,
    StudentId INTEGER NOT NULL,
    ExerciseId INTEGER NOT NULL,
    CONSTRAINT FK_StudentExercises_Exercises FOREIGN KEY (ExerciseId) REFERENCES Exercise(ID),
    CONSTRAINT FK_StudentExercises_Student FOREIGN KEY (StudentId) REFERENCES Student(ID)
);
​
INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (1, 1)
INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (2, 2)
INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (3, 3)
INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (4, 4)
INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (5, 5)
INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (6, 6)
INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (7, 7)
INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (8, 1)
INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (9, 2)
INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (1, 3)
INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (2, 4)
INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (3, 5)
INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (4, 6)
INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (5, 7)
INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (6, 2)
INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (7, 4)
INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (8, 5)
INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (9, 6)
INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (1, 7)
INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (2, 1)
INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (3, 2)
INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (4, 3)
