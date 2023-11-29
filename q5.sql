--------------------------------------------------------------------------------------------------
-- Name: Tarun Mishra | Student ID: 11334675

-- [G5 Jane rolls a 5, lands on 'Victoria']

-- Calculate the rent Jane needs to pay
-- If Bill (player_id 2) owns all Green properties, double the rent
-- If not, Jane pays the regular rent
UPDATE Players
SET balance = balance - 75,
	location = 'Victoria', -- Update Bill's location to 'AMBS'
	bonus = NULL
WHERE player_id = 3; -- Jane's player_id is 2

-- Calculate the rent Bill receives
-- If Bill (player_id 2) owns all Green properties, double the rent
-- If not, Jane pays the regular rent
UPDATE Players 
SET balance = balance + 75 
WHERE player_id = 2; -- Bill's player_id is 2

-- Insert a new record into the GameplayAudit table to log the turn
INSERT INTO GameplayAudit (player_id, location_landed_on, bank_balance, game_round)
SELECT 3, 'Victoria', balance, 2
FROM Players
WHERE player_id = 3;

--------------------------------------------------------------------------------------------------