# 📊 Employee Turnover Analysis

Proyek ini bertujuan untuk menganalisis data karyawan dan menemukan pola yang berkaitan dengan turnover (karyawan keluar). Dataset ini mencakup informasi seperti kepuasan kerja, evaluasi performa, waktu kerja, dan departemen.

## 📁 Dataset
Dataset yang digunakan bernama `HR_comma_sep.csv` yang berisi data karyawan dengan kolom seperti:
- `satisfaction_level`
- `last_evaluation`
- `number_project`
- `average_montly_hours`
- `time_spend_company`
- `Work_accident`
- `left` (1 = keluar dari perusahaan)
- `promotion_last_5years`
- `sales` (departemen)
- `salary`

## 🔧 Proses Pengerjaan

### 1. Data Cleaning (SQL)
Pembersihan data dilakukan menggunakan SQL dengan pendekatan seperti:
- Konversi format tanggal
- Menstandarkan data (misal: mengganti 'Y' dan 'N' menjadi 'Yes' dan 'No')
- Memecah kolom alamat (jika diperlukan)
- Mengisi data null
- Menghapus data duplikat

### 2. Exploratory Data Analysis (Python)
Analisis menggunakan Python dan visualisasi dengan `matplotlib` serta `seaborn`.

#### Contoh Analisis:
- Korelasi antara `satisfaction_level` dan `left`
- Perbandingan jam kerja dan performa
- Turnover berdasarkan departemen
- Hubungan promosi dan masa kerja

### 3. Visualisasi
Beberapa visualisasi yang digunakan:
- Heatmap korelasi
- Boxplot masa kerja vs promosi
- Barplot persentase turnover per departemen

## 🛠 Tools & Library
- Python (Pandas, Seaborn, Matplotlib)
- SQL (Google BigQuery / MySQL)
- Google Colab
- Google Cloud Platform (BigQuery dataset & table)

## 📄 Hasil Utama
- Karyawan dengan kepuasan rendah lebih cenderung keluar.
- Beberapa departemen memiliki tingkat turnover yang tinggi (misalnya: sales).
- Karyawan yang tidak mendapatkan promosi dalam 5 tahun memiliki kecenderungan lebih tinggi untuk keluar.

## 📌 Catatan Teknis
- SQL cleaning disesuaikan agar dapat digunakan pada platform BigQuery dan MySQL.

## 📁 File Terkait
- `HR_comma_sep.csv`: Dataset utama
- `DataCleaning.sql`: langkah pembersihan data dengan SQL
- `descriptive_statistic.ipynb`: Notebook analisis dan visualisasi

## 👨‍💻 Author
Proyek ini dikerjakan sebagai bagian dari portofolio data analyst entry-level.


