

-- öðretmenler tablosu -> Id, isim, soyisim, uzmanlýk
-- öðrenciler tablosu -> Id öðrenci ismi soyismi
-- dersler tablosu ->Id, ders adý , öðretmen_id
--sýnýf tablosu -> Sýnýf Id ders Id, öðrenci_id 

CREATE TABLE Teachers (
    Teacher_Id int PRIMARY KEY IDENTITY(1,1),
    LastName varchar(255),
    FirstName varchar(255),
	Proficiency varchar(255),
);

CREATE TABLE Students (
    Student_Id int PRIMARY KEY IDENTITY(1,1),
    LastName varchar(255),
    FirstName varchar(255),
);

CREATE TABLE Lectures (
    Lecture_Id int PRIMARY KEY IDENTITY(1,1),
    Lecture_name varchar(255),
	Teacher_Id int FOREIGN KEY REFERENCES Teachers(Teacher_Id)
);

CREATE TABLE Class (
	Id int PRIMARY KEY IDENTITY(1,1),
    Class_Id int ,
    Lecture_Id int FOREIGN KEY REFERENCES Lectures(Lecture_Id),
	Student_Id int FOREIGN KEY REFERENCES Students(Student_Id)

);



ALTER TABLE Class 
DROP COLUMN Class_Id;

ALTER TABLE Class
ADD Class_Id int NOT NULL



INSERT INTO Teachers( FirstName, LastName, Proficiency) VALUES ('TestName 1','TestLastname 1','Test 1');
INSERT INTO Teachers( FirstName, LastName, Proficiency) VALUES ('TestName 2','TestLastname 2','Test 2');
INSERT INTO Teachers( FirstName, LastName, Proficiency) VALUES ('TestName 3','TestLastname 3','Test 3');
INSERT INTO Teachers( FirstName, LastName, Proficiency) VALUES ('TestName 4','TestLastname 4','Test 4');
INSERT INTO Teachers( FirstName, LastName, Proficiency) VALUES ('TestName 5','TestLastname 5','Test 5');
INSERT INTO Teachers( FirstName, LastName, Proficiency) VALUES ('TestName 6','TestLastname 6','Test 6');
INSERT INTO Teachers( FirstName, LastName, Proficiency) VALUES ('TestName 7','TestLastname 7','Test 7');
INSERT INTO Teachers( FirstName, LastName, Proficiency) VALUES ('TestName 8','TestLastname 8','Test 8');
INSERT INTO Teachers( FirstName, LastName, Proficiency) VALUES ('TestName 9','TestLastname 9','Test 9');
INSERT INTO Teachers( FirstName, LastName, Proficiency) VALUES ('TestName 10','TestLastname 10','Test 10');

INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 1','StudentLastname 1');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 2','StudentLastname 2');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 3','StudentLastname 3');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 4','StudentLastname 4');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 5','StudentLastname 5');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 6','StudentLastname 6');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 7','StudentLastname 7');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 8','StudentLastname 8');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 9','StudentLastname 9');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 10','StudentLastname 10');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 11','StudentLastname 11');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 12','StudentLastname 12');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 13','StudentLastname 13');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 14','StudentLastname 14');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 15','StudentLastname 15');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 16','StudentLastname 16');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 17','StudentLastname 17');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 18','StudentLastname 18');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 19','StudentLastname 19');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 20','StudentLastname 20');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 21','StudentLastname 21');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 22','StudentLastname 22');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 23','StudentLastname 23');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 24','StudentLastname 24');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 25','StudentLastname 25');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 26','StudentLastname 26');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 27','StudentLastname 27');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 28','StudentLastname 28');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 29','StudentLastname 29');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 30','StudentLastname 30');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 31','StudentLastname 31');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 32','StudentLastname 32');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 33','StudentLastname 33');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 34','StudentLastname 34');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 35','StudentLastname 35');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 36','StudentLastname 36');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 37','StudentLastname 37');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 38','StudentLastname 38');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 39','StudentLastname 39');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 40','StudentLastname 40');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 41','StudentLastname 41');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 42','StudentLastname 42');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 43','StudentLastname 43');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 44','StudentLastname 44');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 45','StudentLastname 45');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 46','StudentLastname 46');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 47','StudentLastname 47');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 48','StudentLastname 48');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 49','StudentLastname 49');
INSERT INTO Students( FirstName, LastName) VALUES ('StudentName 50','StudentLastname 50');

INSERT INTO Lectures( Lecture_name, Teacher_Id) VALUES ('Math',1);
INSERT INTO Lectures( Lecture_name, Teacher_Id) VALUES ('Chemistry',3);
INSERT INTO Lectures( Lecture_name, Teacher_Id) VALUES ('Physics',5);
INSERT INTO Lectures( Lecture_name, Teacher_Id) VALUES ('Biology',7);
INSERT INTO Lectures( Lecture_name, Teacher_Id) VALUES ('English',9);
INSERT INTO Lectures( Lecture_name, Teacher_Id) VALUES ('Geography',10);


INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (1,8,1);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (1,8,2);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (1,8,3);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (1,8,4);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (1,8,5);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (1,8,6);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (1,8,7);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (1,8,8);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (1,8,9);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (1,8,10);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (2,9,11);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (2,9,12);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (2,9,13);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (2,9,14);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (2,9,15);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (2,9,16);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (2,9,17);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (2,9,18);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (2,9,19);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (2,9,20);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (3,10,21);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (3,10,22);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (3,10,23);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (3,10,24);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (3,10,25);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (3,10,26);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (3,10,27);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (3,10,28);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (3,10,29);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (3,10,30);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (4,11,31);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (4,11,32);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (4,11,33);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (4,11,34);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (4,11,35);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (4,11,36);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (4,11,37);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (4,11,38);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (4,11,39);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (4,11,40);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (5,12,41);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (5,12,42);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (5,12,43);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (5,12,44);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (5,12,45);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (5,12,46);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (5,12,47);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (5,12,48);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (5,12,49);
INSERT INTO Class( Class_Id, Lecture_Id, Student_Id) VALUES (5,12,50);





select distinct c.Class_Id,l.Lecture_name,t.FirstName,t.LastName,t.Proficiency,s.FirstName,s.LastName from Class c 
inner join Lectures l
on c.Lecture_Id=l.Lecture_Id
inner join Teachers t
on l.Teacher_Id=t.Teacher_Id
inner join Students s
on c.Student_Id=s.Student_Id
