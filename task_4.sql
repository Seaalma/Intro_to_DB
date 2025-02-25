-- Use the alx_book_store database
USE alx_book_store;

-- Select column information for the books table from INFORMATION_SCHEMA
SELECT COLUMN_NAME, COLUMN_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'alx_book_store'
  AND TABLE_NAME = 'Books';
mysql -u root -p < task_4.sql
