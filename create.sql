
-- Name: Tarun Mishra | Student ID: 11334675

-- Create the Players table
CREATE TABLE Players (
    player_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    token TEXT NOT NULL CHECK (token IN ('Dog', 'Car', 'Battleship', 'Top hat', 'Thimble', 'Boot')),
    balance INTEGER DEFAULT 0,
    location TEXT DEFAULT 'Go', -- Set the default value for location to 'Go'
    bonus TEXT,
    properties_owned TEXT,
    UNIQUE (player_id, name)
);

-- Create the Properties table
CREATE TABLE Properties (
    property_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    cost INTEGER NOT NULL,
    color TEXT,
    owner_id INTEGER, -- To represent the owner of the property
    FOREIGN KEY (owner_id) REFERENCES Players(player_id)
);

-- Create the Bonuses table
CREATE TABLE Bonuses (
    bonus_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT
);

-- Create the Audit Trail table
CREATE TABLE GameplayAudit (
    audit_id INTEGER PRIMARY KEY,
    player_id INTEGER,
    location_landed_on TEXT,
    bank_balance INTEGER,
    game_round INTEGER,
    turn_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- To record the timestamp of the turn
    FOREIGN KEY (player_id) REFERENCES Players(player_id)
);
