use day1;

show tables;

create table emp_a(emp_id int not null,
				name varchar(15) not null,
				department varchar(20) not null,
				city varchar(15) not null,
				state varchar(15) not null,
				country varchar(15) not null);

Insert into emp_a values(101, "Rubal Bansal","Data Analytics","Barnala","Punjab","India"),
						(102,"Ankit Modi","Research","Barnala","Punjab", "India"),
                        (103,"Rishabh Singla","Consultancy","Gurugram","Haryana","India"),
                        (104,"Ashish Singla","Developer","Austin","Texas","US");
                        
			
select * from emp_a;

create table emp_b(emp_id int not null,
				name varchar(15) not null,
				department varchar(20) not null,
				city varchar(15) not null,
				state varchar(15) not null,
				country varchar(15) not null);
                
                
Insert into emp_b values(101, "Rubal Bansal","Data Analytics","Barnala","Punjab","India"),
						(105,"Lavish Bansal","Manufacturing","Barnala","Punjab","India"),
                        (106,"Ankit Jindal","Data Science","New Jersey","New Jersey","US"),
                        (104,"Ashish Singla","Developer","Austin","Texas","US");
                        
select * from emp_b;

### Right Join

select * from emp_a ea Right join emp_b eb on ea.emp_id=eb.emp_id;

### Left Join

select * from emp_a ea Left join emp_b eb on ea.emp_id=eb.emp_id;

### Inner Join

select * from emp_a ea inner join emp_b eb on ea.emp_id=eb.emp_id;

### Outer Join
select * from emp_a ea Left join emp_b eb on ea.emp_id=eb.emp_id
Union
select * from emp_a ea Right join emp_b eb on ea.emp_id=eb.emp_id;

### Intersect
select * from emp_a ea where ea.emp_id in (select eb.emp_id from emp_b eb);

### Union
Select * from emp_a
union
select * from emp_b;

### Union all
select * from emp_a
union all
select * from emp_b;
                
### Minus -> a-b
select * from emp_a ea where ea.emp_id not in (select eb.emp_id from emp_b eb);
                    