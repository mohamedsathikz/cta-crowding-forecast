-- TABLE CREATION

-- create table daily_ridership (
--     station_id integer,
--     stationname varchar(255),
--     service_date date,
--     daytype varchar(5),
--     rides integer
-- );

-- TOP 10 STATIONS

-- select stationname, sum(rides) as total_rides 
-- from daily_ridership 
-- group by stationname 
-- order by total_rides desc 
-- limit 10;

-- AVG RIDES BY DAYTYPE

-- select 
--   case daytype
--     when 'W' then 'Weekday'
--     when 'A' then 'Saturday'
--     when 'U' then 'Sunday/Holiday'
--   end as "Day Category",
--   avg(rides) as average_rides
-- from daily_ridership
-- group by daytype;

