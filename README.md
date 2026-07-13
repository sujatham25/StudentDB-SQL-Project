# 🎓 Student Database Management System

## 📌 Project Overview
This project builds a relational database to manage student records, course enrollments, and academic performance using **SQL**.  
The database provides insights into **student enrollments**, **course performance**, and **grade distribution**, enabling structured academic data management and reporting.

## 📊 Key Features
- **Tables:** Students, Courses, Enrollments
- **Relational Design:** Students linked to Courses via an Enrollments junction table
- **Reporting Queries:** Aggregate functions, joins, grouping, and filtering
- **Insights Generated:**
  - Student-course-grade mapping
  - Course-wise enrollment counts
  - Average student age
  - Students not enrolled in any course
  - Total credits per student
  - Grade-level distribution

## ⚙️ Steps Followed
1. **Database Design**:
   - Created `StudentDB` database
   - Designed 3 normalized tables: `Students`, `Courses`, `Enrollments`
   - Defined primary keys and relationships between tables
2. **Data Insertion**:
   - Inserted sample student records (Name, Age, Grade level)
   - Inserted sample course records (Course Name, Credits)
   - Inserted enrollment records linking students to courses with grades
3. **Query Development**:
   - Wrote `JOIN` queries to combine student, course, and enrollment data
   - Used `LEFT JOIN` to find students not enrolled in any course
   - Applied aggregate functions (`COUNT`, `AVG`, `MAX`, `SUM`)
   - Used `GROUP BY` and `HAVING` for reporting (e.g., students in multiple courses)
   - Sorted and filtered results using `ORDER BY` and `WHERE`

## 📈 Insights & Impact
- Identified students with no course enrollments for follow-up
- Measured total credits taken per student
- Determined course-wise student enrollment counts
- Analyzed grade-level distribution across students
- Found top-performing students by grade ('A' scorers)

## 📂 Files Included
- `Student Database Management.sql` → Full SQL script (schema + data + queries)
- `README.md` → Project documentation

## 🛠 Tools & Technologies
- **MySQL / SQL Server**
- **SQL** (DDL, DML, DQL)

---

**Author:** Sujatha M  
**License:** MIT
