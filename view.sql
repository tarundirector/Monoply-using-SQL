
-- Name: Tarun Mishra | Student ID: 11334675

CREATE VIEW gameView AS
SELECT
    g.game_round AS round_number,
	p.token AS token,
    p.name AS player_name,
    p.balance AS current_balance,
	p.properties_owned AS properties_owned,
	p.bonus AS current_bonus,
    p.location AS current_location
FROM Players AS p
LEFT JOIN GameplayAudit AS g ON p.player_id = g.player_id
WHERE (g.player_id, g.game_round) IN (
    SELECT player_id, MAX(game_round) 
    FROM GameplayAudit 
    GROUP BY player_id
);
