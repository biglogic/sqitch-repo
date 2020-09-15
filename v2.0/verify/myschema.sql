-- Verify appschema

BEGIN;

SELECT pg_catalog.has_schema_privilege('atul', 'usage');

ROLLBACK;
