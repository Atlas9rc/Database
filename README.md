psql -U postgres -d cafe

SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'cafe' AND table_type = 'BASE TABLE';