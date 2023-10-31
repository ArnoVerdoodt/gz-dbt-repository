select
    orders_id,
    date_date,
    sum(revenue) as revenue,
    sum(quantity) as quantity,
    sum(purchase_cost) as purchase_cost,
    sum(margin) as margin

from {{ ref("stg_raw__sales") }}
join {{ ref("int_sales_margin") }} using (products_id)
group by orders_id, date_date
