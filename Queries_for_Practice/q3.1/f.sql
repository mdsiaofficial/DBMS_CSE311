-- f. Find the maximum enrollment, across all sections, in Fall 2017.

select max(enrollment)
from (select count(ID) as enrollment
    from section, takes
    where takes.year = section.year
        and takes.semester = section.semester
        and takes.course_id = section.course-id
        and takes.sec-id = section.sec-id
        and takes.semester = 'Fall'
        and takes.year = 2017
        group by takes.course-id, takes.sec-id)


