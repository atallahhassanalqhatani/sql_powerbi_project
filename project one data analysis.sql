select *from project_one
--���� ����� ���
select MAX(age)AS MAX_AGE,MIN(age) as min_age
from project_one
--����� ������
select gender,COUNT(*) 'number of genders'
from project_one
group by Gender
order by  count(*) desc
--��� ���������� ����������
select top 2 Education_Level,count(*) 
from project_one
group by  Education_Level
order by count(*) desc
--���� ������� �����
select top 2  Job_Title,count(*) '���� ������� �����'
from project_one
group by Job_Title
order by count(*) desc

--��� ����� ������ �� ������� ��������
select Education_Level,Years_of_Experience
from project_one
order by Years_of_Experience desc
--��� ������ �� ����� ������ �������� �������� ������
select Salary,Education_Level,Years_of_Experience,Gender
from project_one
group by Salary ,Education_Level,Years_of_Experience,Gender
order by Salary desc