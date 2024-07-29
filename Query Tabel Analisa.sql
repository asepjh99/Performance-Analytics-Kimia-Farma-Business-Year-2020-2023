-- Membuat tabel analisa di dataset kimia_farma
CREATE OR REPLACE TABLE kimia_farma.kf_analysis AS
SELECT
    kt.transaction_id,
    kt.date AS date,
    kt.branch_id,
    kc.branch_name,
    kc.kota,
    kc.provinsi,
    kc.rating AS rating_cabang,
    kt.customer_name,
    kt.product_id,
    kp.product_name,
    kt.price AS actual_price,
    kt.discount_percentage,
    CASE
        WHEN kt.price <= 50000 THEN 0.10
        WHEN kt.price > 50000 AND kt.price <= 100000 THEN 0.15
        WHEN kt.price > 100000 AND kt.price <= 300000 THEN 0.20
        WHEN kt.price > 300000 AND kt.price <= 500000 THEN 0.25
        ELSE 0.30
    END AS persentase_gross_laba,
    (kt.price - (kt.price * kt.discount_percentage)) AS nett_sales,
    ((kt.price - (kt.price * kt.discount_percentage)) * 
     CASE
        WHEN kt.price <= 50000 THEN 0.10
        WHEN kt.price > 50000 AND kt.price <= 100000 THEN 0.15
        WHEN kt.price > 100000 AND kt.price <= 300000 THEN 0.20
        WHEN kt.price > 300000 AND kt.price <= 500000 THEN 0.25
        ELSE 0.30
    END) AS nett_profit,
    kt.rating AS rating_transaksi
FROM
    `kimia_farma.kf_final_transaction` kt
JOIN
    `kimia_farma.kf_product` kp ON kt.product_id = kp.product_id
JOIN
    `kimia_farma.kf_inventory` ki ON kt.product_id = ki.product_id AND kt.branch_id = ki.branch_id
JOIN
    `kimia_farma.kf_kantor_cabang` kc ON kt.branch_id = kc.branch_id;
