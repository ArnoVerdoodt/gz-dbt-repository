SELECT 
  (quantity * purchase_price) AS purchase_cost,
  ROUND((revenue - (quantity * purchase_price)),2) AS margin,
  products_id


FROM {{ref ('stg_raw__sales')}}
JOIN {{ref ('stg_raw__product')}}
USING (products_id)

