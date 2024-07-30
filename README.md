# Performance Analysis Kimia Farma Business Year 2020 - 2023

- Full Video Presentasi [Click Here](https://drive.google.com/drive/folders/1PvGQIsywRBnoAEW6LYToB0m2XPwhYz3s?usp=drive_link)
- Slide Power Point [Click Here](https://drive.google.com/drive/folders/1BirdTLinveBDSfY7Sh-vZ9EMTH5TyGFv?usp=sharing)
- Linked in Profile [Click Here](https://www.linkedin.com/in/asepkhoerudin)

## Latar Belakang
Sebagai bagian dari Project Based-Intership Big Data Analytics di Kimia Farma, ditugaskan untuk menganalisis kinerja bisnis perusahaan dari tahun 2020 hingga 2023. Tujuannya adalah untuk mendapatkan pemahaman yang lebih mendalam mengenai tren penjualan, profitabilitas, dan kinerja cabang-cabang Kimia Farma. Informasi ini akan sangat berharga bagi perusahaan dalam mengambil keputusan bisnis yang lebih baik di masa depan.

## Dataset

- kf_final_transaction
- kf_inventory
- kf_kantor_cabang
- kf_product

## Membuat Tabel Analysa (kf_analysis)
- transaction_id : kode id transaksi
- date : tanggal transaksi dilakukan,
- branch_id : kode id cabang Kimia Farma,
- branch_name : nama cabang Kimia Farma,
- kota : kota cabang Kimia Farma,
- provinsi : provinsi cabang Kimia Farma,
- rating_cabang : penilaian konsumen terhadap cabang Kimia Farma
- customer_name : Nama customer yang melakukan transaksi,
- product_id : kode product obat,
- product_name : nama obat,
- actual_price : harga obat,
- discount_percentage : Persentase diskon yang diberikan pada obat,
- persentase_gross_laba : Persentase laba yang seharusnya diterima dari obat dengan ketentuan berikut:
  Harga <= Rp 50.000 -> laba 10%, 
  Harga > Rp 50.000 - 100.000 -> laba 15%, 
  Harga > Rp 100.000 - 300.000 -> laba 20, 
  Harga > Rp 300.000 - 500.000 -> laba 25%, 
  Harga > Rp 500.000 -> laba 30%,
- nett_sales : harga setelah diskon
- nett_profit : keuntungan yang diperoleh Kimia Farma
- rating_transaksi : penilaian konsumen terhadap transaksi yang dilakukan.
- **Untuk melihat SQL Query** [Click Here](https://github.com/asepjh99/Performance-Analytics-Kimia-Farma-Business-Year-2020-2023/blob/main/Query%20Tabel%20Analisa.sql)

## Membuat Dashboard
- Judul Dashboard
- Summary Dashboard
- Filter Control
- Snapshot Data
- Perbandingan Pendapatan Kimia Farma dari tahun ke tahun
- Top 10 Total transaksi cabang provinsi
- Top 10 Nett sales cabang provinsi
- Top 5 Cabang Dengan Rating Tertinggi, namun Rating Transaksi Terendah
- Indonesia's Geo Map Untuk Total Proﬁt Masing-masing  Provinsi
- Dan analisis lainnya yang dapat anda eksplorasi.
- **Untuk melihat Dashboard Performance Analysis** [*Click Here*](https://lookerstudio.google.com/reporting/537bb4bc-8925-4fe6-9033-36ac52edf209)

## Insight
- Pendapatan Kimia Farma paling besar didapat pada tahun 2020 dengan total pendapatan 322 M
- Pendapatan Kimia Faram Mengalami fluktuatif dari tahun ke tahun
- Provinsi Jawa Barat merupakan provinsi dengan jumlah Pendapatan Terbanyak dari seluruh cabang Kimia Farma
- Cabang Kimia Farma - Klinik dan Apotik Provinsi Jambi merupakan Cabang Kimia Farma dengan rating cabang tertinggi
