/*
  Warnings:

  - The `codefendant` column on the `CourtCase` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "CourtCase" DROP COLUMN "codefendant",
ADD COLUMN     "codefendant" TEXT[];
