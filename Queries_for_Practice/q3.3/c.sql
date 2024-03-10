-- c. Insert every student whose tot cred attribute is greater than 100 as an instructor in the same department, with a salary of $10,000.

insert into instructor
select ID, name, dept_name, 10000
from student
where tot_cred > 100