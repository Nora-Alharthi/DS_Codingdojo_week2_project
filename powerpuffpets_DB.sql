USE powerpuffpets;

INSERT INTO customer ( customer_id, first_name, last_name, phone_number, email)
VALUES ('001', 'John', 'Doe', '21412042354', 'myemail@email.com');

INSERT INTO customer ( customer_id ,first_name, last_name, phone_number,email)
VALUES ('002', 'Lulu', 'Lori', '21412042354', 'myotheremail@email.com');

INSERT INTO customer ( customer_id, first_name, last_name, phone_number,email)
VALUES ('003', 'Bella', 'Jay', '2130467903', 'Bella@email.com');

INSERT INTO customer ( customer_id ,first_name, last_name, phone_number,email)
VALUES ('004', 'Mike', 'Harper', '2100908430', 'Mike@email.com');

SELECT * 
FROM customer;

INSERT INTO membership ( membership_id, from_date, to_date, membership_tier, membership_price, Customer_customer_id
)
VALUES ( '001', '2020-01-01', '2020-02-01' , 'monthly' , '100$' , '001');

INSERT INTO membership ( membership_id, from_date, to_date, membership_tier, membership_price, Customer_customer_id
)
VALUES ( '002', '2020-02-01', '2020-03-01' , 'monthly' , '100$' , '002');

INSERT INTO membership ( membership_id, from_date, to_date, membership_tier, membership_price, Customer_customer_id
)
VALUES ( '003', '2020-05-05', '2020-06-05' , 'monthly' , '100$' , '001');

INSERT INTO membership ( membership_id, from_date, to_date, membership_tier, membership_price, Customer_customer_id
)
VALUES ( '004', '2020-09-10', '2020-010-10' , 'monthly' , '100$' , '002');

SELECT *
FROM membership; 

INSERT INTO pet ( pet_id, species,birth_date,gender,weight,Customer_customer_id) 
VALUES ( '2', 'Dog', '2000-01-01','F', '56','1');
 
INSERT INTO pet ( pet_id,species,birth_date,gender,weight,Customer_customer_id) 
VALUES ( '3', 'Bird', '2000-01-01','F', '5','2');

INSERT INTO pet ( pet_id, species,birth_date,gender,weight,Customer_customer_id) 
VALUES ( '4', 'Cat', '2000-04-22','F', '50','3');
 
INSERT INTO pet ( pet_id,species,birth_date,gender,weight,Customer_customer_id) 
VALUES ( '5', 'Bird', '2000-01-20','M', '5','4');

SELECT * 
FROM pet;

INSERT INTO product (product_id, product_type, product_name, product_stock, expiration_date, price, refundable ) 
VALUES ('001', 'food', 'cookies', '27', '2022-03-12', '13', 'N' ); 

INSERT INTO product (product_id, product_type, product_name, product_stock, expiration_date, price, refundable ) 
VALUES ('002', 'Grooming Products', 'Shampoo', '74', '2025-04-11', '19', 'Y' ); 

INSERT INTO product (product_id, product_type, product_name, product_stock, expiration_date, price, refundable ) 
VALUES ('003', 'food', 'cookies', '27', '2022-03-12', '13', 'N' ); 

INSERT INTO product (product_id, product_type, product_name, product_stock, expiration_date, price, refundable ) 
VALUES ('004', 'Grooming Products', 'Shampoo', '74', '2025-04-11', '19', 'Y' ); 

SELECT *
FROM product;

INSERT INTO services (service_id, type_of_service, Customer_customer_id, employees_emp_no, Pet_pet_id ) 
VALUES ('001', 'Grooming', '001' , '001','2'); 

INSERT INTO services (service_id, type_of_service, Customer_customer_id, employees_emp_no, Pet_pet_id ) 
VALUES ('002', 'Consulting','002' , '003','3'); 

INSERT INTO services (service_id, type_of_service, Customer_customer_id, employees_emp_no, Pet_pet_id ) 
VALUES ('003', 'Consulting', '001' , '001','2'); 

INSERT INTO services (service_id, type_of_service, Customer_customer_id, employees_emp_no, Pet_pet_id ) 
VALUES ('004', 'Consulting','003' , '003','3');

SELECT *
FROM services; 

INSERT INTO medical_record ( Pet_pet_id,disease,date_infected,date_cured,medicine) 
VALUES ( '2', 'Fleas', '2000-02-03','2000-03-03', 'flea-medicine');

INSERT INTO medical_record ( Pet_pet_id,disease,date_infected,date_cured,medicine) 
VALUES ( '3', 'Flu', '2000-02-03','2000-03-03', 'flu-med');  

INSERT INTO medical_record ( Pet_pet_id,disease,date_infected,date_cured,medicine) 
VALUES ( '4', 'Fleas', '2000-05-03','2000-05-13', 'flea-medicine');

INSERT INTO medical_record ( Pet_pet_id,disease,date_infected,date_cured,medicine) 
VALUES ( '5', 'Fleas', '2000-09-22','2000-10-03', 'flu-med'); 

SELECT * 
FROM medical_record; 
  
INSERT INTO orders ( order_id, product_id, product_quantity, Receipt_receipt_id  )
VALUES ('001', '1', '1', '002');

INSERT INTO orders ( order_id, product_id, product_quantity, Receipt_receipt_id  )
VALUES ('002', '1', '1', '002');

INSERT INTO orders ( order_id, product_id, product_quantity, Receipt_receipt_id  )
VALUES ('003', '1', '1', '002');

INSERT INTO orders ( order_id, product_id, product_quantity, Receipt_receipt_id  )
VALUES ('004', '3', '5', '004');

SELECT *
FROM orders; 

INSERT INTO product_has_order (product_product_id, Order_order_id ) 
VALUES ('001','002' ); 

INSERT INTO product_has_order (product_product_id, Order_order_id ) 
VALUES ('002','003' ); 

INSERT INTO product_has_order (product_product_id, Order_order_id ) 
VALUES ('003','001' ); 

INSERT INTO product_has_order (product_product_id, Order_order_id ) 
VALUES ('004','004' ); 

SELECT *
FROM Product_has_Order;

INSERT INTO receipt ( receipt_id, total_price, date, payment_status, refund_date, Customer_customer_id
)
VALUES ( '01', '200$', '2020-01-28' , 'paid' , '2020-01-28' , '001');

INSERT INTO receipt ( receipt_id, total_price, date, payment_status, refund_date, Customer_customer_id
)
VALUES ( '02', '300$', '2020-01-28' , 'paid' , '2020-01-28' , '002');

INSERT INTO receipt ( receipt_id, total_price, date, payment_status, refund_date, Customer_customer_id
)
VALUES ( '03', '150$', '2020-03-03' , 'unpaid' , '2020-03-22' , '003');

INSERT INTO receipt ( receipt_id, total_price, date, payment_status, refund_date, Customer_customer_id
)
VALUES ( '04', '350$', '2020-01-28' , 'paid' , '2020-01-22' , '004');

SELECT * 
FROM receipt;

INSERT INTO employees ( emp_no, first_name, Last_name,job_type, salary, contract_start,contract_end, Phone_number, address, gender)
VALUES (001, "Ahmad", "mohammed", 'Grooming', '1500', '2019-01-01', '2023-01-01', '09765434567', 'saudi arabiea', "M");

INSERT INTO employees ( emp_no,first_name, Last_name, job_type, salary, contract_start,  contract_end, Phone_number, address, gender) 
VALUES (002, "Ali", "khaled", 'Consulting', '2000', '2017-01-01', '2022-01-01', '045876542343', 'saudi arabiea', "M"); 

INSERT INTO employees ( emp_no, first_name, Last_name,job_type, salary, contract_start,contract_end, Phone_number, address, gender)
VALUES (003, "Faisal", "ali", 'Grooming', '1500', '2019-01-01', '2023-01-01', '09765434567', 'saudi arabiea', "M");

INSERT INTO employees ( emp_no, first_name, Last_name, job_type, salary, contract_start,  contract_end, Phone_number, address, gender) 
VALUES (004, "Sami", "khaled", 'Consulting', '2000', '2017-01-01', '2022-01-01', '045876542343', 'saudi arabiea', "M"); 

SELECT *
FROM employees;




