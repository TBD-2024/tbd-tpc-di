SELECT ft.sk_trade_id, ft.status
FROM {{ ref('fact_trade') }} ft
LEFT JOIN {{ ref('dimension_status_type') }} dst
ON ft.status = dst.status
WHERE dst.status IS NULL
