select*from Subject 
where credit = (select max(credit) from Subject);

select Subject.subID,Subject.subName,Subject.credit,Subject.status,max(Mark.mark)
from Subject 
join Mark 
on Subject.subID=Mark.subID
group by Subject.subID,Subject.subName,Subject.credit,Subject.status
having max(Mark.mark) >= all(select max(Mark.mark) from Mark group by Mark.subID);
update Student set phone='0869946129',status=1,classID=2
where studentID = 5;

select s.studentID as id, s.studentName, s.address, s.phone, s.status, cl.className, AVG(Mark.mark) as `TB`
from Student as s
join Class as cl
on s.classID = cl.classID
join Mark
on s.studentID = Mark.studentID
group by s.studentID
order by `TB` desc






