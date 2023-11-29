--------------------------------------------------------------------------------------------------
-- Name: Tarun Mishra | Student ID: 11334675

-- [G7 Mary rolls a 6, and then a 5, 
-- then lands on Oak House]

-- Update Mary's location to 'Oak House'
UPDATE Players
SET location = 'Oak House',
	balance = balance - 2*100, -- Has to pay Normal 100* 2 which id double the rent as she lands on Oak House & Norman owns all Orange houses
	bonus = NULL
WHERE player_id = 1;

UPDATE Players
SET balance = balance + 2*100 -- Norman recieves 100*2 from Mary
WHERE player_id = 4;

-- Insert a new record into the GameplayAudit table to log the turn
INSERT INTO GameplayAudit (player_id, location_landed_on, bank_balance, game_round)
SELECT 1, 'Oak House', balance, 2
FROM Players
WHERE player_id = 1;

--------------------------------------------------------------------------------------------------