SELECT DISTINCT patient_id
FROM PatientRecords
WHERE diagnosis = 'COVID'
  AND patient_id NOT IN (
    SELECT patient_id FROM PatientRecords WHERE diagnosis = 'COVID' AND discharge_date IS NULL
  );
