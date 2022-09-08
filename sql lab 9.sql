use sakila;

#question 1
# Create a table rentals_may to store the data from rental table with information for the month of May.

create table rentals_may (
rental_id int,
rental_date timestamp,
inventory_id INT ,
customer_id int,
return_date timestamp,
staff_id int,
last_update timestamp );

#question 2
#Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
INSERT INTO rentals_may SELECT * FROM rental WHERE rental_date between '2005-05-01' and '2005-05-31';
select * from rentals_may;

#question 3
#Create a table rentals_june to store the data from rental table with information for the month of June.
create table rentals_june (
rental_id int,
rental_date timestamp,
inventory_id INT ,
customer_id int,
return_date timestamp,
staff_id int,
last_update timestamp );

#question 4
#Insert values in the table rentals_june using the table rental, filtering values only for the month of June.
INSERT INTO rentals_june SELECT * FROM rental WHERE rental_date between '2005-06-01' and '2005-06-30';
select * from rentals_june;

#question 5
#Check the number of rentals for each customer for May.
select customer_id,count(*) from rentals_may group by customer_id;


#question 6
#Check the number of rentals for each customer for June.
select customer_id,count(*) from rentals_june group by customer_id;



#question 6
#Check the number of rentals for each customer for June.



