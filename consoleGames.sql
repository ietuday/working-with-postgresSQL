CREATE TABLE console_games (
    game_rank integer,
    game_name varchar(1200),
    platform varchar(1200),
    game_year integer,
    genre varchar(20),
    publisher varchar(1200),
    na_sales float8,
    eu_sales float8,
    jp_sales float8,
    other_sales float8    
);

COPY console_games FROM '/home/geeky-uday/projects/SQL/P9-ConsoleGames.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE console_dates (
    platform_name char(120),
    first_retail_availability date,
    discontinued date,
    units_sold_mill float8,
    platform_comment varchar(120)    
);

COPY console_dates FROM '/home/geeky-uday/projects/SQL/P9-ConsoleDates.csv' DELIMITER ',' CSV HEADER;

select * from console_games;
UPDATE console_games SET na_sales_percent = na_sales/global_sales * 100 WHERE global_sales > 0;
select * from console_games;
UPDATE console_games SET na_sales_percent = na_sales/global_sales WHERE global_sales > 0;
select * from console_games; 
ALTER TABLE console_games ADD COLUMN global_sales float8; 
UPDATE console_games SET global_sales = na_sales + eu_sales + jp_sales + other_sales; 
ALTER TABLE console_games ADD COLUMN na_sales_percent float8;
 UPDATE console_games SET na_sales_percent = na_sales/global_sales WHERE global_sales > 0;
select * from console_games;
ALTER TABLE console_games ADD COLUMN na_sales_percent float8;
select * from console_games;
UPDATE console_games SET global_sales = na_sales + eu_sales + jp_sales + other_sales
select * from console_games 
ALTER TABLE console_games ADD COLUMN global_sales float8
select * from console_games ALTER TABLE console_games ADD COLUMN global_sales float8
select * from console_games
SELECT * FROM console_games ORDER BY platform ASC, game_year
SELECT * FROM console_games ORDER BY game_rank ASC
select * from console_dates
select * from console_games
COPY console_dates FROM '/home/geeky-uday/projects/SQL/P9-ConsoleDates.csv' DELIMITER ',' CSV HEADER;
COPY console_games FROM '/home/geeky-uday/projects/SQL/P9-ConsoleDates.csv' DELIMITER ',' CSV HEADER;
COPY console_games FROM '/home/geeky-uday/projects/SQL/P9-ConsoleGames.csv' DELIMITER ',' CSV HEADER; CREATE TABLE console_dates ( platform_name char(120), first_retail_availability date, discontinued date, units_sold_mill float8, platform_comment varchar(120) );
COPY console_games FROM '/home/geeky-uday/projects/SQL/P9-ConsoleGames.csv' DELIMITER ',' CSV HEADER;
SELECT game_name, length(game_name) from console_games;

SELECT publisher, left(publisher, 4) FROM console_games;

SELECT publisher, right(publisher, 4) FROM console_games;

SELECT genre, reverse(genre) FROM console_games;

