--1. Вывести таблицу кафедр, но расположить ее поля в обратном порядке.

-- SELECT * FROM Departments

--SELECT 
--	Departments.Name,  
--	Departments.Financing, 
--	Departments.Id 
--FROM 
--	Departments

--2. Вывести названия групп и их рейтинги, используя в качестве названий выводимых полей “Group Name” и “Group Rating” соответственно.

--SELECT
--	Groups.Name AS [Group Name],
--	Groups.Rating AS [Groups Rating]
--FROM 
--	Groups

--3.Вывести для преподавателей их фамилию, процент ставки по отношению к надбавке и процент ставки по отношению к зарплате

----select
--Name, Salary, Premium 
--FROM 
--Teachers
----select
--Premium , count(*) *100 / sum(count(*)) over()
----from 
--Teachers group by Premium

--4. Вывести таблицу факультетов в виде одного поля в следующем формате: “The dean of faculty [faculty] is [dean].”.

--SELECT
--	'The dean of faculty '+ Faculties.Name + 
--		' is '+ Faculties.Dean + '.'
--FROM
--	Faculties

-- Значение [] скобок, а так же возмонжость операций в SQL
-- SELECT 2 + 2 AS [SELECT]

--5. Вывести фамилии преподавателей, которые являются профессорами и ставка которых превышает 15000

--SELECT
--	Surname,
--	Salary,
--	IsProfessor
--FROM
--	Teachers
--WHERE
--	IsProfessor = 1 AND
--	Salary > 15000


--SELECT
--	Name,
--	Surname,
--	Salary,
--	IsProfessor
--FROM
--	Teachers
--WHERE
--	Salary > 10000
--ORDER BY
--	Surname DESC, Salary ASC

--6. Вывести названия кафедр, фонд финансирования которых меньше 11000 или больше 25000

--select 
--Name,Financing 
--from 
--Departments
--where 
--Financing > 11000 and Financing <25000

--7. Вывести названия факультетов кроме факультета “Computer Science”

--select 
--Name
--from 
--Faculties
--where
--Name<> 'Computer Science'

--8. Вывести фамилии и должности преподавателей, которые не являются профессорами

--SELECT
--	Surname,
--	IsProfessor,
--	Position
--FROM
--	Teachers
--WHERE
--	IsProfessor = 1 and Position<> 'profesor'

--9. Вывести фамилии, должности, ставки и надбавки асси- стентов, у которых надбавка в диапазоне от 160 до 550

--select
--	Surname,
--	Salary,
--	Premium,
--	Position
--from	
--	Teachers
--where Premium>=160 and Premium <=550

--10. Вывести фамилии и ставки ассистентов

--select
--	Surname,
--	IsAssistant,
--	Salary,
--	Position
--from Teachers
--where
--	IsAssistant = 1and  position<> 'assistant'

--11. Вывести фамилии и должности преподавателей, которые были приняты на работу до 01.01.2000
	
--select
--	Name,
--	Position,
--	EmploymentDate
--from
--	Teachers
--where
--	EmploymentDate<='01-01-2000'

--13. Вывести фамилии ассистентов, имеющих зарплату не более 1200

--select 
--	name,
--	IsAssistant,
--	Position,
--	Salary,
--	Premium
--from
--	Teachers
--where IsAssistant = 1 and Salary <=1200

--14.Вывести названия групп 5-го курса, имеющих рейтинг в диапазоне от 2 до 4

--select 
--	Name,
--	Rating
--from
--	Groups
--where Rating >=2and Rating <=4

--15.Вывести фамилии ассистентов со ставкой меньше 550 или надбавкой меньше 200

--select 
--	Name,
--	Position,
--	Salary,
--	Premium
--from
--	Teachers
--where
--	Salary < 550 and Premium < 200