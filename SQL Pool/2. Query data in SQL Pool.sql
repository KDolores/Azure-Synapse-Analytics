--Código extraido de: https://docs.microsoft.com/en-us/azure/synapse-analytics/get-started-analyze-sql-pool

SELECT PassengerCount,
      SUM(TripDistanceMiles) as SumTripDistance,
      AVG(TripDistanceMiles) as AvgTripDistance
FROM  dbo.Trip
WHERE TripDistanceMiles > 0 AND PassengerCount > 0
GROUP BY PassengerCount
ORDER BY PassengerCount;
