-------------------------------------------------------------------------------------------------
-- Name: Tarun Mishra | Student ID: 11334675

--[G3 Mary rolls a 4, lands on 'Go To Jail']
UPDATE Players
SET location = 'In Jail', -- Updating location
    bonus = 'Go to Jail' -- Updating bonus
WHERE player_id = 1; -- Norman's player_id is 4

-- Insert a new record into the GameplayAudit table to log the turn
INSERT INTO GameplayAudit (player_id, location_landed_on, bank_balance, game_round)
SELECT 1, 'In Jail', balance, 1
FROM Players
WHERE player_id = 1;

-------------------------------------------------------------------------------------------------