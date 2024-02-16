# MY SQL PROJECT : SECOND HAND CAR DEALER
use cars;
-- READ DATA--
select * from `car_ dekho`;

-- total CARS to get  count of total records --
select count(*) from  `car_ dekho`;

-- the manager asked how many car will be available for 2023 --
select count(*) from `car_ dekho` where year=2023;  #6
-- the manager asked how many car will be available for 2020,2021,2022 --
select count(*) from `car_ dekho` where year=2020;  #74
select count(*) from `car_ dekho` where year=2021;  #7
select count(*) from `car_ dekho` where year=2022; #7

#to get all records of car year wise
-- Group by --
select count(*) from `car_ dekho` where year in (2020,2021,2022) group by year ;


-- client asked to print the total of all the cars by year . i dont see all the details --
select year ,  count(*) from `car_ dekho` group by year ;


-- client asked the car dealer agent that how many diesel cars will there be in 2020? --
select count(*) from `car_ dekho` where year=2020 and fuel = "Diesel";

-- client asked the car dealer agent that how many petrol cars will there be in 2020? --
select count(*) from `car_ dekho` where year=2020 and fuel = "Petrol";

-- the manager told the employee to give a print of all the cars (petrol,diesel,cng) come by all the year --
select year, count(*) from `car_ dekho` where  fuel = "Diesel" group by year ;
select year, count(*) from `car_ dekho` where  fuel = "Petrol" group by year ;
select year, count(*) from `car_ dekho` where  fuel = "CNG" group by year ;

-- the managerbasked which year had more than 100 cars --
select year, count(*) from `car_ dekho` group by year having count(*)>100;
select year, count(*) from `car_ dekho` group by year having count(*)<50;

-- the manager said to the employee to get complete details of cars bet 2015 and 2023 --
select*from `car_ dekho` where year between 2015 and 2023 ; 















   