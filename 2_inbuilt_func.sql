
-- When you want the NULL values in a call him to be replaced with a zero, use COALESCE(col, 0)

select i.InstructorId, i.FName, i.LName, COALESCE(TT.NoOfPhDStudents, 0)
from Instructor i
left join TT on TT.InstructorId = i.InstructorId;


