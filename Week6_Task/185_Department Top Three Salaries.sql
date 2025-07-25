SELECT d.Name AS Department, e.Name AS Employee, e.Salary
FROM (
  SELECT *, DENSE_RANK() OVER (PARTITION BY DepartmentId ORDER BY Salary DESC) AS rnk
  FROM Employee
) e
JOIN Department d ON e.DepartmentId = d.Id
WHERE rnk <= 3;
