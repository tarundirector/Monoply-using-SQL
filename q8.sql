--------------------------------------------------------------------------------------------------
-- Name: Tarun Mishra | Student ID: 11334675

-- [G8 Bill rolls a 6, and then a 3, lands on Community Chest 1] Calculating the new balance for Bill
UPDATE Players
SET balance = balance + 100 + 200, -- Gets 100 according to the rules for landing in community chest and also gets 200 for passing GO
	location = 'Community Chest 1',
	bonus = 'Community Chest 1'
WHERE player_id = 2; -- Assuming Bill's player_id is 4

-- Insert a new record into the GameplayAudit table to log the turn
INSERT INTO GameplayAudit (player_id, location_landed_on, bank_balance, game_round)
SELECT 2, 'Community Chest 1', balance, 2
FROM Players
WHERE player_id = 2;

---------------------------------------------------------------------------------------------------