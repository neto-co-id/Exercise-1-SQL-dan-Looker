#Kelompok DS8-12
#Hanosi Wazri
#Inocentius Reynaldo Bhoka Tola

#Misi Challange
#1
SELECT
  Province,sum(New_Active_Cases) as New_Cases_Active
FROM
  data-science-414913.Challange_Chapter1.Covid19
GROUP BY 
  Province 
ORDER BY 
  New_Cases_Active desc;

#2
SELECT
  Location_ISO_Code,
  SUM(Total_Deaths) AS TotalDeaths
FROM
  data-science-414913.Challange_Chapter1.Covid19
GROUP BY
  Location_ISO_Code
ORDER BY
  TotalDeaths asc
LIMIT
  2;

#3
SELECT
  Date,
  Case_Recovered_Rate
FROM
  data-science-414913.Challange_Chapter1.Covid19
WHERE
  Country = 'Indonesia'
ORDER BY
  Case_Recovered_Rate desc
LIMIT
  1;

#4
SELECT
  Location_ISO_Code,
  sum(Case_Fatality_Rate) as Fatality_Rate,
  sum(Case_Recovered_Rate) as Recovered_Rate
FROM
  data-science-414913.Challange_Chapter1.Covid19
GROUP BY
  Location_ISO_Code
ORDER BY
  Fatality_Rate,Recovered_Rate asc;

#5
SELECT
  Date,
  Total_Cases
FROM
  data-science-414913.Challange_Chapter1.Covid19
WHERE
  Total_Cases >= 30000
ORDER BY Date;

#6
SELECT
  COUNT(*) AS Total_Data
FROM
  data-science-414913.Challange_Chapter1.Covid19
WHERE
  Total_Cases >= 30000;