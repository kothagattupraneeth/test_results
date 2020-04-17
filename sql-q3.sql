SELECT DISTINCT dest_city from Flights 
WHERE  dest_city NOT IN
      (SELECT DISTINCT dest_city from Flights 
       WHERE origin_city IN
        (SELECT DISTINCT dest_city from Flights 
         WHERE origin_city LIKE 'Seattle%'
        )
       )
ORDER BY 1;
