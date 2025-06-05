# Analisis Attrition Karyawan

**Proyek Portofolio Data Analyst**

## Latar Belakang Masalah Bisnis

Tingginya tingkat *turnover* atau *attrition* karyawan dapat menimbulkan dampak negatif signifikan bagi perusahaan, seperti peningkatan biaya rekrutmen dan pelatihan, penurunan produktivitas tim, serta hilangnya pengetahuan institusional. Proyek ini bertujuan untuk mengidentifikasi faktor-faktor kunci yang berkontribusi terhadap keputusan karyawan untuk keluar dari perusahaan, sehingga departemen Sumber Daya Manusia (SDM) dapat mengambil langkah-langkah proaktif untuk meningkatkan retensi.

## Tujuan Proyek

* Mengidentifikasi variabel-variabel utama yang memiliki korelasi kuat dengan *attrition* karyawan.
* Membandingkan karakteristik karyawan yang keluar dengan karyawan yang bertahan.
* Memberikan *insight* berbasis data dan rekomendasi strategis untuk mengurangi tingkat *attrition* dan meningkatkan retensi karyawan.

## Dataset

Dataset yang digunakan dalam proyek ini adalah `HR_comma_sep.csv`, yang berisi data anonim dari karyawan sebuah perusahaan, termasuk informasi mengenai:
* `satisfaction_level`: Tingkat kepuasan karyawan (0-1)
* `last_evaluation`: Penilaian performa terakhir (0-1)
* `number_project`: Jumlah proyek yang dikerjakan
* `average_monthly_hours`: Rata-rata jam kerja bulanan
* `time_spend_company`: Lama waktu bekerja di perusahaan (tahun)
* `work_accident`: Indikator kecelakaan kerja (0=Tidak, 1=Ya)
* `left`: Variabel target, apakah karyawan keluar (1=Ya) atau bertahan (0=Tidak)
* `promotion_last_5years`: Indikator promosi dalam 5 tahun terakhir (0=Tidak, 1=Ya)
* `department`: Departemen kerja
* `salary`: Tingkat gaji (low, medium, high)

## Metodologi

Proyek ini mengikuti alur analisis data standar:

1.  **Pembersihan Data (Data Cleaning):** Mengidentifikasi dan menangani nilai yang hilang, duplikat, dan potensi *outlier* menggunakan SQL (di Google BigQuery/MySQL).
2.  **Exploratory Data Analysis (EDA):** Menganalisis distribusi variabel, korelasi, dan membandingkan kelompok karyawan yang keluar vs. bertahan menggunakan statistik deskriptif dan visualisasi data dengan Python.
3.  **Visualisasi Data:** Membuat grafik yang informatif dan menarik untuk mengkomunikasikan *insight* kunci.
4.  **Analisis Mendalam & Rekomendasi:** Menarik kesimpulan berdasarkan data dan merumuskan rekomendasi strategis untuk departemen HR.

## Tools & Teknologi yang Digunakan

* **Python:** Untuk analisis data, manipulasi, dan visualisasi.
    * `pandas`: Manipulasi dan analisis data.
    * `numpy`: Operasi numerik.
    * `seaborn`: Visualisasi statistik.
    * `matplotlib`: Plotting dasar.
* **SQL (Google BigQuery/MySQL):** Untuk pembersihan data awal dan kueri data.
* **Google Colab:** Lingkungan *notebook* berbasis *cloud* untuk pengembangan dan eksekusi kode Python.
* **Google Cloud Platform:** Platform komputasi *cloud* yang digunakan untuk SQL.

## Insight & Temuan Kunci

Berdasarkan analisis data, beberapa temuan kunci yang berkontribusi terhadap *attrition* karyawan meliputi:

* **Tingkat Kepuasan Rendah:** Karyawan dengan **tingkat kepuasan di bawah 0.4** memiliki kemungkinan tinggi untuk keluar.
* **Penilaian Kinerja dan Beban Kerja:**
    * Karyawan dengan **penilaian kinerja sangat rendah (<0.5)** namun **jumlah proyek dan jam kerja rendah** cenderung keluar (mungkin karena performa buruk).
    * Karyawan dengan **penilaian kinerja sangat tinggi (>0.8)** namun **jumlah proyek dan jam kerja sangat tinggi** (overworked) juga cenderung keluar, terlepas dari kepuasan.
* **Gaji:** Karyawan dengan **gaji 'low'** memiliki tingkat *attrition* yang jauh lebih tinggi dibandingkan dengan gaji 'medium' atau 'high'.
* **Departemen:** Departemen **'sales'**, **'technical'**, dan **'support'** menunjukkan tingkat *attrition* yang relatif lebih tinggi.
* **Kurangnya Promosi:** Karyawan yang **belum mendapatkan promosi dalam 5 tahun terakhir** memiliki kemungkinan lebih besar untuk *resign*.

## Rekomendasi Bisnis

Berdasarkan *insight* di atas, berikut adalah rekomendasi *actionable* untuk meningkatkan retensi karyawan:

1.  **Fokus pada Peningkatan Kepuasan Karyawan:** Lakukan survei kepuasan yang lebih mendalam dan inisiatif untuk meningkatkan moral serta kepuasan kerja, terutama bagi karyawan dengan tingkat kepuasan di bawah ambang batas (misalnya, <0.4).
2.  **Optimasi Beban Kerja & Penilaian Kinerja:**
    * Identifikasi dan berikan dukungan bagi karyawan dengan *low performance* melalui pelatihan atau penyesuaian peran.
    * Lakukan evaluasi ulang beban kerja bagi karyawan berkinerja tinggi yang mengalami *overwork* (misalnya, jam kerja di atas 250 jam/bulan atau lebih dari 5 proyek). Pertimbangkan alokasi sumber daya tambahan atau insentif.
3.  **Tinjau Struktur Gaji:** Pertimbangkan untuk meninjau dan menyesuaikan struktur gaji, terutama di level 'low', untuk memastikan kompensasi yang kompetitif dan mengurangi risiko *attrition* berbasis gaji.
4.  **Perhatian Khusus pada Departemen Berisiko Tinggi:** Lakukan analisis lebih lanjut dan implementasikan program retensi yang ditargetkan di departemen seperti *sales*, *technical*, dan *support*.
5.  **Perencanaan Jalur Karir & Promosi:** Pastikan karyawan memiliki jalur karir yang jelas dan peluang promosi yang adil. Berikan *feedback* dan rencana pengembangan bagi mereka yang belum dipromosikan dalam waktu lama.

## Navigasi Repository

* `HR_comma_sep.csv`: Dataset asli yang digunakan untuk analisis.
* `DataCleaning.sql`: Skrip SQL untuk langkah-langkah pembersihan data awal.
* `Employee_Attrition_Analysis_Portfolio.ipynb`: Jupyter Notebook yang berisi seluruh proses analisis data, visualisasi, dan kesimpulan.
