DO $$
BEGIN

  ALTER TABLE streams ADD COLUMN start_version bigint DEFAULT 0;

  -- record schema migration
  INSERT INTO schema_migrations (major_version, minor_version, patch_version) VALUES (1, 4, 0);

END;
$$ LANGUAGE plpgsql;
