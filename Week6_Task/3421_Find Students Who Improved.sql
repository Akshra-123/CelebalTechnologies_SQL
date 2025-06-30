SELECT DISTINCT a.student_id
FROM Exam a
JOIN Exam b 
  ON a.student_id = b.student_id 
  AND a.subject_name = b.subject_name 
  AND a.exam_date < b.exam_date
WHERE a.score < b.score;
