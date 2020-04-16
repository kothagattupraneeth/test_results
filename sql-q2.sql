SELECT flight_num
FROM Flights JOIN Carriers
ON Flights.carrier_id = Carriers.cid
JOIN Weekdays
ON Flights.day_of_week_id = Weekdays.did
WHERE Flights.origin_city LIKE 'Seattle%' AND Flights.dest_city LIKE 'BOSTON%'
AND Carriers.name LIKE '%Alaska%'
AND Weekdays.day_of_week = 'Monday'
GROUP BY flight_num;
