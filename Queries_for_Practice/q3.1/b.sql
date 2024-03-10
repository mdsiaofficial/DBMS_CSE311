-- b. Find the IDs of all students who were taught by an instructor named Einestein; make sure there are no duplicates in the result.


select distinct takes.ID
from takes, instructor, teaches
where 
takes.course_id = teaches.course_id and 
takes.sec_id = teaches.sec_id and 
takes.semester = teaches.semester and
takes.year = teaches.year and
teaches.id = instructor.id and
instructor.name = "Einstein";