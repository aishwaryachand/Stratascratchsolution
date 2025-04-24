--https://platform.stratascratch.com/coding/2004-number-of-comments-per-user-in-past-30-days?code_type=3

select user_id , SUM(number_of_comments) 
from fb_comments_count

  WHERE  created_at BETWEEN DATE '2020-01-11' AND DATE '2020-02-09'
  GROUP BY user_id
  HAVING SUM(number_of_comments) > 0 ;
  
