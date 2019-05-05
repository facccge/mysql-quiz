#取得平均薪水最高的公司
#输出公司名称和平均薪水：companyName avgSalary


select companyName,max(a.avgSalary)as avgSalary from (
select companyId,AVG(salary)as avgSalary from employee GROUP BY companyId) as a join company on a.companyId = company.id;