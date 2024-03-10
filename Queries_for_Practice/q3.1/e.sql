-- e. Find the enrollment of each section that was offered in Fall 2017.

-- way 1:
select course_id, sec_id,
    (select count(ID)
    from takes
    where takes.year = section.year
    and takes.semester = section.semester
    and takes.course_id = section.course_id
    and takes.sec_id = section.sec_id)
    as enrollment
from section
where semester = 'Fall'
and year = 2017;


-- way 2:
select takes.course-id, takes.sec-id, count(ID)
from section, takes
where
    takes.course_id = section.course_id
    and takes.sec_id = section.sec_id
    and takes.semester = section.semester
    and takes.year = section.year
    and takes. semester = 'Fall'
    and takes.year = 2017
group by takes.course_id, takes.sec_id