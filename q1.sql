-------------------------------------------------------------------------------------------------
-- Name: Tarun Mishra | Student ID: 11334675

-- [G1 Jane rolls a 3, Lands on 'Go'] Calculate the new balance for Jane

UPDATE Players
SET balance = balance + 200, -- Balance to be updated
    location = 'Go', 
    bonus = 'Go' -- Bonus to be updated
WHERE player_id = 3; --  Jane's player_id is 3

-- Insert a new record into the GameplayAudit table to log the turn
INSERT INTO GameplayAudit (player_id, location_landed_on, bank_balance, game_round)
SELECT 3, 'Go', balance, 1
FROM Players
WHERE player_id = 3;

-------------------------------------------------------------------------------------------------