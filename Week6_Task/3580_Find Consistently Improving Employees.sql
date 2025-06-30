SELECT DISTINCT employee_id
FROM Performance a
WHERE EXISTS (
  SELECT 1
  FROM Performance b
  WHERE a.employee_id = b.employee_id
    AND a.month = b.month - 1
    AND a.rating < b.rating
)
AND EXISTS (
  SELECT 1
  FROM Performance c
  WHERE a.employee_id = c.employee_id
    AND a.month = c.month - 2
    AND EXISTS (
      SELECT 1 FROM Performance d
      WHERE d.employee_id = a.employee_id
        AND d.month = a.month + 1
        AND d.rating > a.rating
    )
);
