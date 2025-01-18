SELECT ft.sk_trade_id, ft.sk_customer_id
FROM {{ ref('fact_trade') }} ft
LEFT JOIN {{ ref('dimension_customer') }} dc
ON ft.sk_customer_id = dc.sk_customer_id
WHERE dc.sk_customer_id IS NULL
