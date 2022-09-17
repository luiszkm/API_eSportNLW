-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Ad" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "gameId" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "yearsPlaying" TEXT NOT NULL,
    "discord" TEXT NOT NULL,
    "weekDays" TEXT NOT NULL,
    "hourStart" TEXT NOT NULL,
    "hourEnd" TEXT NOT NULL,
    "useVoiceChanel" BOOLEAN NOT NULL,
    "created_at" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "Ad_gameId_fkey" FOREIGN KEY ("gameId") REFERENCES "Game" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Ad" ("created_at", "discord", "gameId", "hourEnd", "hourStart", "id", "name", "useVoiceChanel", "weekDays", "yearsPlaying") SELECT "created_at", "discord", "gameId", "hourEnd", "hourStart", "id", "name", "useVoiceChanel", "weekDays", "yearsPlaying" FROM "Ad";
DROP TABLE "Ad";
ALTER TABLE "new_Ad" RENAME TO "Ad";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
