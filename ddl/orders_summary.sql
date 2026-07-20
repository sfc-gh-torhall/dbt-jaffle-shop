-- v1: orders summary view
CREATE OR REPLACE VIEW DEMO_DBT.JAFFLE_SHOP.VW_ORDERS_SUMMARY AS
SELECT
    customer_id,
    COUNT(*)             AS total_orders,
    SUM(order_total)     AS lifetime_spend,
    MAX(ordered_at)      AS last_order_date
FROM DEMO_DBT.JAFFLE_SHOP.ORDERS
GROUP BY customer_id;
