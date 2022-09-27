--10
SELECT company, Round(avg(star_rating),8) AS avg_rating
from data_analyst_jobs
where review_count > 5000
group by company 
order by avg_rating desc;

--11

select count(DISTINCT title)
from data_analyst_jobs
where title ilike '%analyst';
--12

Select (title)
from data_analyst_jobs
where title not ilike '%analytics%' AND title NOT LIKE '%analyst%'

--bonus
select domain, count(title) AS total_jobs
from data_analyst_jobs
where skill ILIKE '%SQL%'' AN days_since_posting >21 AND domain is not NULL 
group by domain 
order by total_jobs desc;
