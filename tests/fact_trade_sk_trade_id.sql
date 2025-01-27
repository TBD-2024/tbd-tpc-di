SELECT sk_trade_id, COUNT(*)
FROM {{ ref('fact_trade') }}
GROUP BY sk_trade_id
HAVING COUNT(*) > 1;
