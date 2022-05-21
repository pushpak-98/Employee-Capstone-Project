---Loading the data in tables using Sqoop.
---Load Employees data
sqoop export --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114224 --username anabig114224 --password Bigda
ta123 --table Employees --export-dir /user/anabig114224/employees.csv


---Load Departments data
sqoop export --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114224 --username anabig114224 --password Bigda
ta123 --table Departments --export-dir /user/anabig114224/departments.csv

---Load Department_Employees data

sqoop export --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114224 --username anabig114224 --password Bigda
ta123 --table Department_Employees --export-dir /user/anabig114224/dept_emp.csv

---Load Department_Manager data
sqoop export --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114224 --username anabig114224 --password Bigda
ta123 --table Department_Manager --export-dir /user/anabig114224/dept_manager.csv



---Load Salaries data

sqoop export --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114224 --username anabig114224 --password Bigda
ta123 --table Salaries --export-dir /user/anabig114224/salaries.csv


---Load Titles data

sqoop export --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114224 --username anabig114224 --password Bigda
ta123 --table Titles --export-dir /user/anabig114224/titles.csv



