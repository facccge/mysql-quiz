# 取得每个company中最高薪水的人员名字
# 输出结果包含公司名称和人员名称：companyName name


select companyName,name from (
select employee.id,name,age,companyId,companyName,salary from employee join company on employee.companyId = company.id
) as a join
(
select companyId,max(salary) as salary from employee GROUP BY companyId
) as b where a.companyId = b.companyId and a.salary = b.salary