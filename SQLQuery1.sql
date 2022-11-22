 select *
 from PortFolio_Project..CovidDeaths
 order by 3,4
 --select *
 --from PortFolio_Project..CovidVaccinations
 --order by 3,4
 
 --Select the data to be used
 
 Select location,date,total_Cases, new_cases,total_deaths,population
 From PortFolio_Project..CovidDeaths
 order by 1,2

 --Total cases vs Total Deaths

  Select location,date,total_Cases,total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
 From PortFolio_Project..covid_deaths
 order by 1,2
