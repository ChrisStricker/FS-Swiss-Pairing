-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

DROP TABLE IF EXISTS matches CASCADE;
DROP TABLE IF EXISTS players;
DROP VIEW IF EXISTS statistics;

CREATE TABLE players
(
	player_id	serial primary key,
	player_name	text not null
);

CREATE TABLE matches
(
	winner_id	integer references players(player_id),
	loser_id	integer references players(player_id)
);

CREATE VIEW statistics AS
	SELECT p.player_id,
		   p.player_name,
		   (select count(*) from matches where winner_id = p.player_id) wins,
		   (select count(*) from matches where loser_id = p.player_id) loses
	FROM players p;
