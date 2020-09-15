-- Deploy flipr:adddata to pg

BEGIN;


CREATE OR REPLACE FUNCTION atul.delete_flip(
   flip_id BIGINT
) RETURNS BOOLEAN LANGUAGE plpgsql SECURITY DEFINER AS $$
BEGIN
    DELETE FROM flipe.flips WHERE id = flip_id;
    RETURN FOUND;
END;
$$;

COMMIT;
