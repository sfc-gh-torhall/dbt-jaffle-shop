-- deploy.sql
-- Runs all DDL in dependency order on merge to main.
-- Execute via: snow sql -f deploy.sql -x
--
-- Each file contains a single CREATE OR REPLACE statement.
-- Safe to re-run at any time -- idempotent.

-- ── Views ─────────────────────────────────────────────────────────────────────
EXECUTE IMMEDIATE FROM @DEMO_DBT.JAFFLE_SHOP.JAFFLE_SHOP_REPO/branches/main/ddl/orders_summary.sql;
