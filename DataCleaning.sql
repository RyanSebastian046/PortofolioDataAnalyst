-- CLEANING DATA UNTUK DATASET employee_raw
-- Dataset ID: portofolio | Table: employee_raw

-- 1. Buat tabel baru yang sudah dibersihkan dan distandarisasi
CREATE OR REPLACE TABLE `portofolio-461216.portofolio.employee_clean` AS
SELECT
  satisfaction_level,
  last_evaluation,
  number_project,
  average_montly_hours,
  time_spend_company,
  Work_accident AS work_accident,
  `left` AS employee_left,
  promotion_last_5years AS promotion_last_5_years,
  LOWER(TRIM(sales)) AS department,
  LOWER(TRIM(salary)) AS salary
FROM `portofolio-461216.portofolio.employee_raw`
WHERE
  satisfaction_level IS NOT NULL
  AND last_evaluation IS NOT NULL;

-- 2. Standarisasi nilai kategori salary menjadi huruf kapital di awal
UPDATE `portofolio-461216.portofolio.employee_clean`
SET salary = CASE
  WHEN salary = 'low' THEN 'Low'
  WHEN salary = 'medium' THEN 'Medium'
  WHEN salary = 'high' THEN 'High'
  ELSE salary
END;

-- 3. Isi nilai kosong pada kolom department jika ada
UPDATE `portofolio-461216.portofolio.employee_clean`
SET department = 'unknown'
WHERE department IS NULL OR department = '';

-- 4. Cek jumlah duplikat berdasarkan seluruh kolom
SELECT
  satisfaction_level, last_evaluation, number_project,
  average_montly_hours, time_spend_company, work_accident,
  employee_left, promotion_last_5_years, department, salary,
  COUNT(*) AS jumlah
FROM `portofolio-461216.portofolio.employee_clean`
GROUP BY
  satisfaction_level, last_evaluation, number_project,
  average_montly_hours, time_spend_company, work_accident,
  employee_left, promotion_last_5_years, department, salary
HAVING COUNT(*) > 1;

-- 5. Buat tabel baru tanpa duplikat jika ditemukan
CREATE OR REPLACE TABLE `portofolio-461216.portofolio.employee_clean_dedup` AS
SELECT DISTINCT *
FROM `portofolio-461216.portofolio.employee_clean`;

-- 6. Lihat hasil akhir
SELECT *
FROM `portofolio-461216.portofolio.employee_clean_dedup`
LIMIT 20;
