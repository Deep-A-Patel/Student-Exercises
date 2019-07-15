using System;
using System.Collections.Generic;

namespace StudentExercises
{
    class Program
    {
        static void Main(string[] args)
        {

            Exercise Exercise1 = new Exercise()
            {
                Name = "Object practice",
                Language = "JavaScript"
            };
            Exercise Exercise2 = new Exercise()
            {
                Name = "Array Methods",
                Language = "JavaScript"
            };
            Exercise Exercise3 = new Exercise()
            {
                Name = "LINQ",
                Language = "C#"
            };
            Exercise Exercise4 = new Exercise()
            {
                Name = "Types",
                Language = "C#"
            };

            Cohort Day32 = new Cohort()
            {
                CohortName = "Cohort 32"
            };
            Cohort Day33 = new Cohort()
            {
                CohortName = "Cohort 33"
            };
            Cohort Day34 = new Cohort()
            {
                CohortName = "Cohort 34"
            };

            Student Deep = new Student()
            {
                FirstName = "Deep",
                LastName = "Patel",
                SlackHandle = "@ThePatel",
                Cohort = 32

            };

            Student Ellie = new Student()
            {
                FirstName = "Ellie",
                LastName = "Ash",
                SlackHandle = "@TheAsh",
                Cohort = 33

            };
            Student Janki = new Student()
            {
                FirstName = "Janki",
                LastName = "Patel",
                SlackHandle = "@TheJanki",
                Cohort = 34

            };

            Student Kishan = new Student()
            {
                FirstName = "Kishan",
                LastName = "Bant",
                SlackHandle = "@TheBant",
                Cohort = 34

            };

            Day32.AddStudent(Deep);
            Day32.AddStudent(Ellie);
            Day32.AddStudent(Janki);
            Day32.AddStudent(Kishan);

            Instructor Adam = new Instructor()
            {
                FirstName = "Adam",
                LastName = "Sheaffer",
                SlackHandle = "@TheSheaffer",
                Cohort = 33

            };
            Instructor Kristen = new Instructor
            {
                FirstName = "Kristen",
                LastName = "Norris",
                SlackHandle = "@TheNorris",
                Cohort = 31

            };
            Instructor Jisie = new Instructor()
            {
                FirstName = "Jisie",
                LastName = "David",
                SlackHandle = "@TheDavid",
                Cohort = 32

            };

            Day32.AddInstructor(Adam);
            Day32.AddInstructor(Kristen);
            Day32.AddInstructor(Jisie);

            Adam.AssignStudents(Deep, Exercise1);
            Adam.AssignStudents(Deep, Exercise2);

            Kristen.AssignStudents(Ellie, Exercise3);
            Kristen.AssignStudents(Ellie, Exercise4);

            Jisie.AssignStudents(Janki, Exercise2);
            Jisie.AssignStudents(Janki, Exercise4);

            Adam.AssignStudents(Kishan, Exercise1);
            Adam.AssignStudents(Janki, Exercise3);

            List<Student> students = new List<Student>();

            students.Add(Deep);
            students.Add(Ellie);
            students.Add(Janki);
            students.Add(Kishan);

            List<Exercise> exercises = new List<Exercise>();

            exercises.Add(Exercise1);
            exercises.Add(Exercise2);
            exercises.Add(Exercise3);
            exercises.Add(Exercise4);

            foreach (Student student in students)
            {
                Console.WriteLine($"Student: {student.FirstName}");
                foreach (Exercise exercise in student.Exercises)
                {
                    Console.WriteLine($"Exercise: {exercise.Name}");
                }
            }
        }
    }
}