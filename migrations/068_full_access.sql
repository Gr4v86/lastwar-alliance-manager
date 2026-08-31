-- +goose Up
ALTER TABLE users ADD COLUMN full_access BOOLEAN NOT NULL DEFAULT 0;

-- +goose Down
-- SQLite does not support DROP COLUMN reliably across all supported versions.
-- The column is intentionally retained on rollback.
