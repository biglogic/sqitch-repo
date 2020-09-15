-- Revert flipr:init from pg

BEGIN;

SELECT version();

COMMIT;
