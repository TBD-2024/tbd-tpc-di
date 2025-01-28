SELECT *
FROM {{ ref('fact_trade') }}
WHERE sk_security_id IS NULL
