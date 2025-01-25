SELECT *
FROM {{ ref('fact_watches') }}
WHERE sk_date_placed >= sk_date_removed;
