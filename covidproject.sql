use pro2;
select location,sum(dead),sum(infected),(sum(dead)/sum(infected) * 100) as 'dead_infected_likehood'
from data
where location like '%canada%'
group by location
order by location;

select location,sum(dead),sum(vaccinated),(sum(dead)/sum(vaccinated) * 100) as 'dead_vaccinated_likehood'
from data
group by location
order by dead_vaccinated_likehood;


select location,sum(infected),sum(vaccinated),(sum(infected)/sum(vaccinated) * 100) as 'infected_vaccinated_likehood'
from data
group by location
order by infected_vaccinated_likehood;


select location,sum(dead),population,(sum(dead)/population * 100) as 'highrate'
from data
group by location,population
order by highrate;
