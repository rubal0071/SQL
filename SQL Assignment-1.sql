USE day1;

Create table store_sales(month varchar(20) not null,
						prod_name varchar(20) not null,
                        sales int not null,
                        primary key (month,prod_name));
				
Describe store_sales;

Insert into store_sales (month,prod_name,sales)
VALUES                  ("Jan", "Fruits", 45000),
						("Jan", "Vegetables", 67000),
                        ("Jan","Dairy",55000),
                        ("Feb","Fruits","42000"),
                        ("Feb","Vegetables",32000),
                        ("Feb","Dairy",52000),
                        ("March","Fruits",61000),
                        ("March","Vegetables",43000),
                        ("March","Dairy",92000);
                        
Select * from store_sales