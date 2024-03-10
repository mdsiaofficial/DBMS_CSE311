--g.Find the sections that had the maximum enrollment in Fall 2017.
-- The following answer uses a with clause, simplifying the query.

with sec_enrollment as (
    select takes.course-id, takes.sec-id, count(ID) as enrollment
    from section, takes
    where takes.year = section.year
        and takes.semester = section.semester
        and takes.course_id = section.course_id
        and takes.sec_id = section.sec_id
        and takes.semester = 'Fall'
        and takes.year = 2017
    group by takes.course-id, takes.sec_id)
select course_id, sec_id
from sec_enrollment
where enrollment = (select max(enrollment) from sec_enrollment);