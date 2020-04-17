SELECT name as carrier , MAX(PRICE) AS max_price
FROM Flights JOIN Carriers
ON Flights.carrier_id = Carriers.cid
WHERE (Flights.origin_city LIKE 'Seattle%' OR Flights.origin_city LIKE 'New York%')
AND ( Flights.dest_city LIKE 'New York%' OR Flights.dest_city LIKE 'Seattle%')
GROUP BY Carriers.name
ORDER BY 1,2;
