SELECT * FROM yug.`owid-covid-data`;
-- data to be used
SELECT location, date, total_cases, new_cases, total_deaths, population 
FROM yug.`owid-covid-data` order by 1,2

-- totalcases vs totaldeaths
SELECT location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as deathrate
FROM yug.`owid-covid-data` 
where location='India' order by 1,2

-- totalcases vs population
SELECT location, date, total_cases, population, (total_cases/population)*100 as infectionrate
FROM yug.`owid-covid-data` 
where location='India' order by 1,2

-- Highest infection rate per country
SELECT location, population, max(total_cases), max(total_cases/population)*100 as maxinfectionrate
FROM yug.`owid-covid-data` 
-- where location='India'
Group by location, population
order by maxinfectionrate desc

-- Country with highest deathrate
SELECT location, population, max(total_deaths), max(total_deaths/population)*100 as maxdeathrate
FROM yug.`owid-covid-data` 
-- where location='India'
Group by location, population
order by maxdeathrate desc

-- Country with highest death
SELECT location, max(total_deaths) as maxdeath
FROM yug.`owid-covid-data` 
Group by location
order by maxdeath desc

-- Continent with highest death
SELECT continent, max(total_deaths) as maxdeath
FROM yug.`owid-covid-data` 
Group by continent
order by maxdeath desc

