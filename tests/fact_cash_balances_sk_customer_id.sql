SELECT *
FROM {{ ref('fact_cash_balances') }}
WHERE sk_customer_id IS NULL;
