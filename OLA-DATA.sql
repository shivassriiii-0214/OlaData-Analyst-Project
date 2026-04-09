SELECT * FROM ola.`project1 ola.xlsx - july`;

create view Successful_Bookings As
select* from `project1 ola.xlsx - july`
where booking_Status ="Success";
select* from Successful_Bookings;


create view ride_distance_for_each_vehicle as
select Vehicle_Type, AVG(Ride_Distance)
as avg_distance from `project1 ola.xlsx - july`
group by Vehicle_Type;
select*from ride_distance_for_each_vehicle ;


create view canceled_rides_by_Customer as
select COUNT(*) from `project1 ola.xlsx - july`
where Booking_Status = 'Canceled by Customer';
select* from canceled_rides_by_Customer ;


create view top5_customer as 
select Customer_ID,COUNT(Booking_ID) as total_rides
from  `project1 ola.xlsx - july`
group by Customer_ID
order by total_rides desc LIMIT 5;
select*from top5_customer;


create view canceled_by_drivers as
select COUNT(*) from `project1 ola.xlsx - july`
where Canceled_Rides_by_Driver="Personal $car related issue";
select *from canceled_by_drivers ;


create view max_min_ratings as
select MAX(Driver_Ratings) as max_rating,
MIN(Driver_Ratings) as min_rating
from `project1 ola.xlsx - july` where Vehicle_Type='Prime sedan';
select*from max_min_ratings;


create view UPI_payment as
select *from `project1 ola.xlsx - july` 
where Payment_Method='UPI';
select *from UPI_payment;


create view customer_rating as
select Vehicle_Type ,AVG(CUstomer_Rating)as avg_customer_rating
from `project1 ola.xlsx - july` 
group by Vehicle_Type;
select*from  customer_rating;


create view total_successful_ride_value as
select SUM(Booking_Value) as total_successful_ride_value
from `project1 ola.xlsx - july`
where Booking_Status='Success';


create view Incomplete_Rides_Reason as
select Bookinng_ID, Incomplete_Rides_Reason
from `project1 ola.xlsx - july`
where Incomplete_Rides ='Yes';
select*from Incomplete_Rides_Reason ; 