select * from SleepHealth;

-- DEMOGRAPHIC ANALYSIS --

-- Exploring the number of records by Gender
SELECT Gender,
	   COUNT(gender) as Gender_Count
FROM SleepHealth
GROUP BY Gender;

-- Exploring the average age of indivudals
SELECT Gender,
	   ROUND(AVG(age)) as Average_Age
FROM SleepHealth
GROUP BY Gender;

-- Exploring the distribution of different Occupations
SELECT Occupation,
	   Count(*) AS Amount
FROM SleepHealth
GROUP BY Occupation;

-- --------------------------------------- --

-- Sleep Quality Analysis -- 

-- Exploring the relationship between SleepDuration and QualityOfSleep
SELECT SleepDuration, QualityOfSleep
FROM SleepHealth
ORDER BY SleepDuration DESC;

-- Exploring the occupations with and without SleepDisorder
SELECT Occupation,
	   COUNT(*) AS Amount,
	   SleepDisorder
FROM SleepHealth
GROUP BY occupation, 
		 SleepDisorder 
ORDER BY occupation,
		 Amount DESC;

-- --------------------------------------- --

-- Activity Level and Health -- 

-- Exploring the correlation between PhysicalActivityLevel and Health indicators: BloodPressure, HeartRate
SELECT PhysicalActivityLevel, 
	   BloodPressure,
       HeartRate
FROM SleepHealth
ORDER BY PhysicalActivityLevel;

-- Exploring the correlation between the QualityOfSleep and PhysicalActivityLevel
SELECT PhysicalActivityLevel,
	   AVG(QualityOfSleep) AS AvgSleepQuality
FROM SleepHealth
GROUP BY PhysicalActivityLevel;

-- Exploring how the interaction between PhysicalActivityLevel and StressLevel influences other health metrics
SELECT PhysicalActivityLevel, 
       StressLevel, 
       ROUND(AVG(BloodPressure)) AS AvgBloodPressure, 
       ROUND(AVG(HeartRate)) AS AvgHeartRate
FROM SleepHealth
GROUP BY PhysicalActivityLevel, StressLevel;





