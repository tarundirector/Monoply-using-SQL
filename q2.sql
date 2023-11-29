-------------------------------------------------------------------------------------------------
-- Name: Tarun Mishra | Student ID: 11334675

-- [G2 Norman rolls a 1, Lands on 'Chance1'] Calculate the new balance for Norman
UPDATE Players
SET balance = balance - 150, -- Balance to be deducted by 150 as to be paid to 3 other individuals, 50*3=150
	location = 'Chance 1', -- Updating location
    bonus = 'Chance 1' -- Updating bonus
WHERE player_id = 4; -- Norman's player_id is 4

-- Calculating the new balance for other players (assuming player_ids 1, 2, and 3 are other players)
UPDATE Players
SET balance = balance + 50, -- Increasing each player's balance by 50
	bonus = 'Chance 1' -- Updating each player's current bonus
WHERE player_id IN (1, 2, 3); -- All players except 4 ie Norman

-- Insert a new record into the GameplayAudit table to log the turn
INSERT INTO GameplayAudit (player_id, location_landed_on, bank_balance, game_round)
SELECT 4, 'Chance 1', balance, 1
FROM Players
WHERE player_id = 4;

-------------------------------------------------------------------------------------------------