-------------------------------------------------------------------------------------------------
-- Name: Tarun Mishra | Student ID: 11334675

-- [G4 Bill rolls a 2, lands on 'AMBS']

-- Bill does not own AMBS hence buys it according to the rules
UPDATE Players
SET balance = balance - 400, -- Update Bill's balance after buying
	location = 'AMBS', -- Update Bill's location to 'AMBS'
	properties_owned = properties_owned || ', AMBS', -- Update Bill's Properties owned
	bonus = NULL
WHERE player_id = 2; -- Bill's player_id is 2

-- Updating properties table to add Bill as owner
UPDATE Properties
SET owner_id = 2
WHERE name = 'AMBS';

-- Insert a new record into the GameplayAudit table to log the turn
INSERT INTO GameplayAudit (player_id, location_landed_on, bank_balance, game_round)
SELECT 2, 'AMBS', balance, 1
FROM Players
WHERE player_id = 2;

--------------------------------------------------------------------------------------------------