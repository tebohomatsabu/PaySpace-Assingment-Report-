CREATE TABLE Company (
	Company_id INT NOT NULL,
	Company_name VARCHAR(100)
	PRIMARY KEY (Company_id)

);

INSERT INTO Company (Company_id ,Company_name)
VALUES (1,'Acme Industries'),
	   (2,'Globex Corporation'),
       (3,'Krusty Krab');

CREATE TABLE EMPLOYEE(

	Employee_id INT NOT NULL,
	Company_id INT,
	Employee_number VARCHAR(100),
	First_name VARCHAR(100),
	Last_name VARCHAR(100),
	DateOfBirth VARCHAR(100),
	Gender VARCHAR(100),
	Nationality VARCHAR(100),
	PRIMARY KEY (Employee_id)
);

INSERT INTO EMPLOYEE (employee_id ,company_id,employee_number,first_name,last_name,dateofbirth,gender,nationality)
VALUES (1,1, 'A1','Bugs','Bunny', '1999/02/04', 'Male', 'South African'),
	   (2,1,'A2','Donald','Duck','1998/01/14', 'Male', 'Canadian'),
       (3,1,'A3','Tweety','Bird','1990/11/04','Female','South African'),
	   (4,1,'A4','Speedy','Gonzalez','2000/01/01','Male','South African'),
	   (5,2,'B1','Homer','Simpson','1989/08/13','Male','American'),
	   (6,2,'B2','Bart','Simpson','2003/06/10','Male','American'),
	   (7,2,'B3','Marge','Simpson','1990/02/14','Female','Mexican'),
	   (8,2,'B4','Lisa','Simpson','2001/06/12','Female','American'),
	   (9,3,'C1','Spongebob','Squarepants','2003/04/02','Female','English'),
	   (10,3,'C2','Patrick','Star','1995/05/05','Male','Scottish'),
	   (11,3,'C3','Sandy','Cheeks','2006/12/31','Female','Irish');

CREATE TABLE Address(

	Address_id INT NOT NULL,
	Town VARCHAR(100)
	PRIMARY KEY (Address_id)
);

INSERT INTO Address (Address_id ,Town)
VALUES (1,'Johannesburg'),
	   (2,'Cape Town');

CREATE TABLE TaxRates(
	TaxRates_Id INT PRIMARY KEY,
	SalaryRateFrom INT,
	SalaryRateTo INT, 
	RatePercentage INT
	PRIMARY KEY (TaxRates_Id)
	
);
INSERT INTO TaxRates (TaxRates_Id,SalaryRateFrom,SalaryRateTo,RatePercentage)
VALUES (1,0, 7500,10),
	   (2,7501,15000,15),
	   (3,15001,23000,18),
	   (4,23001,31000,23),
	   (5,31001,40000,30),
	   (6,40001,9999999,40);

CREATE TABLE Salaries(

	Salary_Id INT,
	Employee_Id INT,
	Salary INT,
	PRIMARY KEY (Salary_Id)
	
);
INSERT INTO Salaries(salary_id,Employee_Id,Salary)
VALUES (1,1,5000),
	   (2,2,24000),
	   (3,3,14000),
	   (4,4,32000),
	   (5,5,89000),
	   (6,6,10000),
	   (7,7,10000),
	   (8,8,20000),
	   (9,9,25000),
	   (10,10,35000),
	   (11,11,42000);

CREATE TABLE Position(
	Position_Id INT,
	Employee_Id INT,
	Position	VARCHAR(100),
	EffectiveDate DATE,
	PRIMARY KEY (Position_Id) 	
);	
INSERT INTO Position(Position_Id,Employee_Id,Position,EffectiveDate)
VALUES (1,1,'Junior Developer','2020/01/01'),
	   (2,1,'Intermediate Developer','2022/01/01'),
	   (3,2,'Junior Accountant','2020/01/01'),
	   (4,3,'Associate Attorney','2020/01/01'),
	   (5,3,'Senior Attorney','2023/01/01'),
	   (6,4,'Junior Analyst', '2020/01/01'),
	   (7,5,'Junior Scientist', '2020/01/01'),
	   (8,6,'Junior Doctor', '2020/01/01'),
	   (9,6,'Senior Doctor', '2024/01/01'),
	   (10,7,'Junior Data Analyst', '2020/01/01'),
	   (11,8,'Junior Developer', '2020/01/01'),
	   (12,9,'Junior Finance Analyst', '2020/01/01'),
	   (13,9,'Intermediate Manager', '2022/01/01'),
	   (14,10,'Junior Mediator','2020/01/01'),
	   (15,11,'Junior Consultant','2020/01/01'),
	   (16,11,'Senior Consultantt','2023/01/01');