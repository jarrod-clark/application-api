-- AlterTable
ALTER TABLE "CourtCase" ALTER COLUMN "entered_date_time" SET DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN "felony_warrant" SET DEFAULT false,
ALTER COLUMN "family_violence" SET DEFAULT false;
