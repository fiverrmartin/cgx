-- Remove conflicting tables
DROP TABLE IF EXISTS blockchain CASCADE;
DROP TABLE IF EXISTS device CASCADE;
DROP TABLE IF EXISTS game CASCADE;
DROP TABLE IF EXISTS genre CASCADE;
DROP TABLE IF EXISTS play_to_earn CASCADE;
DROP TABLE IF EXISTS game_blockchain CASCADE;
DROP TABLE IF EXISTS game_device CASCADE;
DROP TABLE IF EXISTS genre_game CASCADE;
DROP TABLE IF EXISTS play_to_earn_game CASCADE;
-- End of removing


CREATE TABLE blockchain (
    id_blockchain SERIAL NOT NULL,
    name VARCHAR(80) NOT NULL
);
ALTER TABLE blockchain ADD CONSTRAINT pk_blockchain PRIMARY KEY (id_blockchain);
ALTER TABLE blockchain ADD CONSTRAINT uc_blockchain_name UNIQUE (name);

CREATE TABLE device (
    id_device SERIAL NOT NULL,
    name VARCHAR(256) NOT NULL
);


ALTER TABLE device ADD CONSTRAINT pk_device PRIMARY KEY (id_device);
ALTER TABLE device ADD CONSTRAINT uc_device_name UNIQUE (name);

CREATE TABLE game (
    id_game SERIAL NOT NULL,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(1200) NOT NULL,
    status VARCHAR(60) NOT NULL CHECK ( status in('development', 'presale', 'cancelled', 'alpha', 'beta', 'live') ),
    nft_support BOOLEAN NOT NULL,
    free_to_play BOOLEAN,
    image VARCHAR(512) NOT NULL
);
ALTER TABLE game ADD CONSTRAINT pk_game PRIMARY KEY (id_game);
ALTER TABLE game ADD CONSTRAINT uc_game_name UNIQUE (name);

CREATE TABLE genre (
    id_genre SERIAL NOT NULL,
    name VARCHAR(80) NOT NULL
);
ALTER TABLE genre ADD CONSTRAINT pk_genre PRIMARY KEY (id_genre);
ALTER TABLE genre ADD CONSTRAINT uc_genre_name UNIQUE (name);

CREATE TABLE play_to_earn (
    id_p2e SERIAL NOT NULL,
    name VARCHAR(60) NOT NULL
);
ALTER TABLE play_to_earn ADD CONSTRAINT pk_play_to_earn PRIMARY KEY (id_p2e);
ALTER TABLE play_to_earn ADD CONSTRAINT uc_play_to_earn_name UNIQUE (name);

CREATE TABLE game_blockchain (
    id_game INTEGER NOT NULL,
    id_blockchain INTEGER NOT NULL
);
ALTER TABLE game_blockchain ADD CONSTRAINT pk_game_blockchain PRIMARY KEY (id_game, id_blockchain);

CREATE TABLE game_device (
    id_game INTEGER NOT NULL,
    id_device INTEGER NOT NULL
);
ALTER TABLE game_device ADD CONSTRAINT pk_game_device PRIMARY KEY (id_game, id_device);

CREATE TABLE genre_game (
    id_genre INTEGER NOT NULL,
    id_game INTEGER NOT NULL
);
ALTER TABLE genre_game ADD CONSTRAINT pk_genre_game PRIMARY KEY (id_genre, id_game);

CREATE TABLE play_to_earn_game (
    id_p2e INTEGER NOT NULL,
    id_game INTEGER NOT NULL
);
ALTER TABLE play_to_earn_game ADD CONSTRAINT pk_play_to_earn_game PRIMARY KEY (id_p2e, id_game);

ALTER TABLE game_blockchain ADD CONSTRAINT fk_game_blockchain_game FOREIGN KEY (id_game) REFERENCES game (id_game) ON DELETE CASCADE;
ALTER TABLE game_blockchain ADD CONSTRAINT fk_game_blockchain_blockchain FOREIGN KEY (id_blockchain) REFERENCES blockchain (id_blockchain) ON DELETE CASCADE;

ALTER TABLE game_device ADD CONSTRAINT fk_game_device_game FOREIGN KEY (id_game) REFERENCES game (id_game) ON DELETE CASCADE;
ALTER TABLE game_device ADD CONSTRAINT fk_game_device_device FOREIGN KEY (id_device) REFERENCES device (id_device) ON DELETE CASCADE;

ALTER TABLE genre_game ADD CONSTRAINT fk_genre_game_genre FOREIGN KEY (id_genre) REFERENCES genre (id_genre) ON DELETE CASCADE;
ALTER TABLE genre_game ADD CONSTRAINT fk_genre_game_game FOREIGN KEY (id_game) REFERENCES game (id_game) ON DELETE CASCADE;

ALTER TABLE play_to_earn_game ADD CONSTRAINT fk_play_to_earn_game_play_to_ea FOREIGN KEY (id_p2e) REFERENCES play_to_earn (id_p2e) ON DELETE CASCADE;
ALTER TABLE play_to_earn_game ADD CONSTRAINT fk_play_to_earn_game_game FOREIGN KEY (id_game) REFERENCES game (id_game) ON DELETE CASCADE;
