# 找出薪水在公司的平均薪水之上的人员名字
# 输出标准中包含Employee中所有字段和该employee所在公司名称以及该公司平均薪资：
# id | name | age | gender | companyId | salary | companyName | avgsal


select id , name , age , gender , e.companyId , salary , companyName , avgSalary as avgsal
 from employee as e join (
select companyId,companyName,avgSalary from (
select companyId,AVG(salary)as avgSalary from employee GROUP BY companyId) as a join company as c on a.companyId = c.id
) as b on e.companyId = b.companyId where salary > avgSalary;