
-- Name: Tarun Mishra | Student ID: 11334675

-- Insert data into the Players table
INSERT INTO Players (name, token, balance, location, properties_owned)
VALUES
    ('Mary', 'Battleship', 190, 'Free Parking', 'Uni Place'),
    ('Bill', 'Dog', 500, 'Owens Park', 'Victoria'),
    ('Jane', 'Car', 150, 'AMBS', 'Co-Op'),
    ('Norman', 'Thimble', 250, 'Kilburn', 'Oak House, Owens Park');

-- Insert data into the Properties table
INSERT INTO Properties (name, cost, color, owner_id)
VALUES
    ('Oak House', 100, 'Orange', 4), -- Norman (player_id 4) owns Oak House
    ('Owens Park', 30, 'Orange', 4), -- Norman (player_id 4) owns Owens Park
    ('AMBS', 400, 'Blue', NULL), 
    ('Co-Op', 30, 'Blue', 3), -- Jane (player_id 3) owns Co-Op
    ('Kilburn', 120, 'Yellow', NULL),
    ('Uni Place', 100, 'Yellow', 1), -- Mary (player_id 1) owns Uni Place
    ('Victoria', 75, 'Green', 2), -- Bill (player_id 2) owns Victoria
    ('Piccadilly', 35, 'Green', NULL);

-- Insert data into the Bonuses table
INSERT INTO Bonuses (name, description)
VALUES
    ('Chance 1', 'Pay each of the other players £50'),
    ('Chance 2', 'Move forward 3 spaces'),
    ('Community Chest 1', 'For winning a Beauty Contest, you win £100'),
    ('Community Chest 2', 'Your library books are overdue. Pay a fine of £30'),
    ('Free Parking', 'No action'),
    ('Go to Jail', 'Go to Jail, do not pass GO, do not collect £200'),
    ('GO', 'Collect £200');

-- Insert data into the GameplayAudit table (assuming one game round)
INSERT INTO GameplayAudit (player_id, location_landed_on, bank_balance, game_round)
VALUES
    (1, 'Free Parking', 190, 0),
    (2, 'Owens Park', 500, 0),
    (3, 'AMBS', 150, 0),
    (4, 'Kilburn', 250, 0);

