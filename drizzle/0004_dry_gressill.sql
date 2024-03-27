CREATE TABLE IF NOT EXISTS "challenges" (
	"lesson_id" integer NOT NULL,
	"type" "type" NOT NULL,
	"question" text NOT NULL,
	"order" integer NOT NULL
);
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "challenges" ADD CONSTRAINT "challenges_lesson_id_lessons_id_fk" FOREIGN KEY ("lesson_id") REFERENCES "lessons"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
