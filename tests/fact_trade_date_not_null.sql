SELECT ft.sk_trade_id, ft.trade_date
FROM {{ ref('fact_trade') }} ft
LEFT JOIN {{ ref('dimension_date') }} dd
ON ft.trade_date = dd.date_value
WHERE dd.date_value IS NULL
