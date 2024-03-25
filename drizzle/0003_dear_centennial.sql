DO $$ BEGIN
 CREATE TYPE "type" AS ENUM('SELECT', 'ASSIST');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
