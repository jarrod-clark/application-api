/*
  Warnings:

  - You are about to drop the column `arrest_date` on the `CourtCase` table. All the data in the column will be lost.
  - You are about to drop the column `assigned_opener` on the `CourtCase` table. All the data in the column will be lost.
  - You are about to drop the column `course_of_action` on the `CourtCase` table. All the data in the column will be lost.
  - You are about to drop the column `court_case_number` on the `CourtCase` table. All the data in the column will be lost.
  - You are about to drop the column `da_number` on the `CourtCase` table. All the data in the column will be lost.
  - You are about to drop the column `defendant_dob` on the `CourtCase` table. All the data in the column will be lost.
  - You are about to drop the column `defendant_name` on the `CourtCase` table. All the data in the column will be lost.
  - You are about to drop the column `district_court_number` on the `CourtCase` table. All the data in the column will be lost.
  - You are about to drop the column `diversion_reason` on the `CourtCase` table. All the data in the column will be lost.
  - You are about to drop the column `entered_by` on the `CourtCase` table. All the data in the column will be lost.
  - You are about to drop the column `entered_date_time` on the `CourtCase` table. All the data in the column will be lost.
  - You are about to drop the column `family_violence` on the `CourtCase` table. All the data in the column will be lost.
  - You are about to drop the column `federal_charges` on the `CourtCase` table. All the data in the column will be lost.
  - You are about to drop the column `felony_warrant` on the `CourtCase` table. All the data in the column will be lost.
  - You are about to drop the column `four_zero_three` on the `CourtCase` table. All the data in the column will be lost.
  - You are about to drop the column `four_zero_three_attorney` on the `CourtCase` table. All the data in the column will be lost.
  - You are about to drop the column `four_zero_three_case_numbers` on the `CourtCase` table. All the data in the column will be lost.
  - You are about to drop the column `incident_date` on the `CourtCase` table. All the data in the column will be lost.
  - You are about to drop the column `incident_location` on the `CourtCase` table. All the data in the column will be lost.
  - You are about to drop the column `justice_reform_attorney` on the `CourtCase` table. All the data in the column will be lost.
  - You are about to drop the column `lea_number` on the `CourtCase` table. All the data in the column will be lost.
  - You are about to drop the column `no_pdm_reason` on the `CourtCase` table. All the data in the column will be lost.
  - You are about to drop the column `pdm_attorney` on the `CourtCase` table. All the data in the column will be lost.
  - You are about to drop the column `pdm_reason` on the `CourtCase` table. All the data in the column will be lost.
  - You are about to drop the column `pv_hold` on the `CourtCase` table. All the data in the column will be lost.
  - You are about to drop the column `reviewed_by` on the `CourtCase` table. All the data in the column will be lost.
  - You are about to drop the column `tier_reason` on the `CourtCase` table. All the data in the column will be lost.
  - You are about to drop the column `tier_reason_other` on the `CourtCase` table. All the data in the column will be lost.
  - Added the required column `arrestDate` to the `CourtCase` table without a default value. This is not possible if the table is not empty.
  - Added the required column `courtCaseNumber` to the `CourtCase` table without a default value. This is not possible if the table is not empty.
  - Added the required column `defendantDob` to the `CourtCase` table without a default value. This is not possible if the table is not empty.
  - Added the required column `defendantName` to the `CourtCase` table without a default value. This is not possible if the table is not empty.
  - Added the required column `enteredBy` to the `CourtCase` table without a default value. This is not possible if the table is not empty.
  - Added the required column `incidentDate` to the `CourtCase` table without a default value. This is not possible if the table is not empty.
  - Added the required column `incidentLocation` to the `CourtCase` table without a default value. This is not possible if the table is not empty.
  - Added the required column `leaNumber` to the `CourtCase` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "CourtCase" DROP COLUMN "arrest_date",
DROP COLUMN "assigned_opener",
DROP COLUMN "course_of_action",
DROP COLUMN "court_case_number",
DROP COLUMN "da_number",
DROP COLUMN "defendant_dob",
DROP COLUMN "defendant_name",
DROP COLUMN "district_court_number",
DROP COLUMN "diversion_reason",
DROP COLUMN "entered_by",
DROP COLUMN "entered_date_time",
DROP COLUMN "family_violence",
DROP COLUMN "federal_charges",
DROP COLUMN "felony_warrant",
DROP COLUMN "four_zero_three",
DROP COLUMN "four_zero_three_attorney",
DROP COLUMN "four_zero_three_case_numbers",
DROP COLUMN "incident_date",
DROP COLUMN "incident_location",
DROP COLUMN "justice_reform_attorney",
DROP COLUMN "lea_number",
DROP COLUMN "no_pdm_reason",
DROP COLUMN "pdm_attorney",
DROP COLUMN "pdm_reason",
DROP COLUMN "pv_hold",
DROP COLUMN "reviewed_by",
DROP COLUMN "tier_reason",
DROP COLUMN "tier_reason_other",
ADD COLUMN     "arrestDate" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "assignedOpener" TEXT,
ADD COLUMN     "courseOfAction" TEXT,
ADD COLUMN     "courtCaseNumber" TEXT NOT NULL,
ADD COLUMN     "daNumber" TEXT,
ADD COLUMN     "defendantDob" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "defendantName" TEXT NOT NULL,
ADD COLUMN     "districtCourtNumber" TEXT,
ADD COLUMN     "diversionReason" TEXT,
ADD COLUMN     "enteredBy" TEXT NOT NULL,
ADD COLUMN     "enteredDateTime" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "familyViolence" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "federalCharges" TEXT,
ADD COLUMN     "felonyWarrant" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "fourZeroThree" BOOLEAN,
ADD COLUMN     "fourZeroThreeAttorney" TEXT,
ADD COLUMN     "fourZeroThreeCaseNumbers" TEXT,
ADD COLUMN     "incidentDate" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "incidentLocation" TEXT NOT NULL,
ADD COLUMN     "justiceReformAttorney" TEXT,
ADD COLUMN     "leaNumber" TEXT NOT NULL,
ADD COLUMN     "noPdmReason" TEXT,
ADD COLUMN     "pdmAttorney" TEXT,
ADD COLUMN     "pdmReason" TEXT,
ADD COLUMN     "pvHold" BOOLEAN,
ADD COLUMN     "reviewedBy" TEXT,
ADD COLUMN     "tierReason" TEXT,
ADD COLUMN     "tierReasonOther" TEXT;
