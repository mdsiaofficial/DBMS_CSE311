-- a. Find the titles of courses in the Comp. Sci. department that have 3 credits.

SELECT title
FROM course
WHERE dept_name = 'Comp. Sci.' AND credits = 3;