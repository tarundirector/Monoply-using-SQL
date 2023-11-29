--------------------------------------------------------------------------------------------------
-- Name: Tarun Mishra | Student ID: 11334675

-- [G6 Norman rolls a 4, lands on Community Chest 1] Calculating the new balance for Norman
UPDATE Players
SET balance = balance + 100,
	location = 'Community Chest 1',
	bonus = 'Community Chest 1'
WHERE player_id = 4; -- Assuming Norman's player_id is 4

-- Insert a new record into the GameplayAudit table to log the turn
INSERT INTO GameplayAudit (player_id, location_landed_on, bank_balance, game_round)
SELECT 4, 'Community Chest 1', balance, 2
FROM Players
WHERE player_id = 4;

--------------------------------------------------------------------------------------------------