-- AFTER CREATING THE TABLES AND LOADING THE DATA INTO MYSQL TABLES
-- RUN THE BELOW SQOOP COMMANDS TO TRANSFER TABLES FROM MYSQL TO HIVE/HDFS INTO AVRO FORMAT

--RUN THE BELOW IN SHELL TO CREATE A FOLDER FOR CAPSTONE DATA FILES
hdfs dfs -mkdir /user/anabig114224/hive/warehouse/Data

--TO IMPORT Department_Employees TABLES
 sqoop import --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114224 --username anabig114224 --password Bigdata123 --compression-codec=snappy --as-avrodatafile --table dept_emp --warehouse-dir=/user/anabig114224/hive/warehouse/Data --m 1 --driver com.mysql.jdbc.Driver

--TO IMPORT Department_Managers TABLES
sqoop import --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114224 --username anabig114224 --password Bigdata123 --compression-codec=snappy --as-avrodatafile --table dept_mangr --warehouse-dir=/user/anabig114224/hive/warehouse/Data --m 1 --driver com.mysql.jdbc.Driver;

--TO IMPORT Departments TABLES
sqoop import --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114224 --username anabig114224 --password Bigdata123 --compression-codec=snappy --as-avrodatafile --table departments --warehouse-dir=/user/anabig114224/hive/warehouse/Data --m 1 --driver com.mysql.jdbc.Driver;

--TO IMPORT Salaries TABLES
sqoop import --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114224 --username anabig114224 --password Bigdata123 --compression-codec=snappy --as-avrodatafile --table salaries --warehouse-dir=/user/anabig114224/hive/warehouse/Data --m 1 --driver com.mysql.jdbc.Driver;

--TO IMPORT Titles TABLES
sqoop import --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114224 --username anabig114224 --password Bigdata123 --compression-codec=snappy --as-avrodatafile --table titles --warehouse-dir=/user/anabig114224/hive/warehouse/Data --m 1 --driver com.mysql.jdbc.Driver;

--TO IMPORT Employees_1 TABLES
sqoop import --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114224 --username anabig114224 --password Bigdata123 --compression-codec=snappy --as-avrodatafile --table employees --warehouse-dir=/user/anabig114224/hive/warehouse/Data --driver com.mysql.jdbc.Driver;

--NOW WE NEED TO CREATE A DIRECTORY FOR THE AVRO SCHEMA
hadoop fs -mkdir /user/anabig114224/capstone

hadoop fs -chmod +rw /user/anabig114224/capstone

--WE NEED TO PUT THE AVRO SCHEMA INTO CAPSTONE FOLDER
hadoop fs -put /home/anabig114224/dept_emp.avsc /user/anabig114224/capstone/dept_emp.avsc;
hadoop fs -put /home/anabig114224/dept_mangr.avsc /user/anabig114224/capstone/dept_mangr.avsc;
hadoop fs -put /home/anabig114224/departments.avsc /user/anabig114224/capstone/departments.avsc
hadoop fs -put /home/anabig114224/employees.avsc /user/anabig114224/capstone/employees.avsc
hadoop fs -put /home/anabig114224/salaries.avsc /user/anabig114224/capstone/salaries.avsc
hadoop fs -put /home/anabig114224/title.avsc /user/anabig114224/capstone/title.avsc