SELECT *
FROM {{ ref('fact_cash_balances') }}
WHERE amount < 0;
