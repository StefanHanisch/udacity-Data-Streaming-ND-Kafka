CREATE TABLE stations (
  stop_id INTEGER PRIMARY KEY,
  direction_id VARCHAR(1) NOT NULL,
  stop_name VARCHAR(70) NOT NULL,
  station_name VARCHAR(70) NOT NULL,
  station_descriptive_name VARCHAR(200) NOT NULL,
  station_id INTEGER NOT NULL,
  "order" INTEGER,
  ada BOOLEAN NOT NULL,
  red BOOLEAN NOT NULL,
  blue BOOLEAN NOT NULL,
  green BOOLEAN NOT NULL,
  brown BOOLEAN NOT NULL,
  purple BOOLEAN NOT NULL,
  purple_express BOOLEAN NOT NULL,
  yellow BOOLEAN NOT NULL,
  pink BOOLEAN NOT NULL,
  orange BOOLEAN NOT NULL,
  location VARCHAR(50),
  historical_wards_2003_2015 INTEGER,
  zip_codes INTEGER,
  community_areas INTEGER,
  census_tracts INTEGER,
  wards INTEGER
);

COPY stations(
  stop_id,
  direction_id,
  stop_name,
  station_name,
  station_descriptive_name,
  station_id,
  "order",
  ada,
  red,
  blue,
  green,
  brown,
  purple,
  purple_express,
  yellow,
  pink,
  orange,
  location,
  historical_wards_2003_2015,
  zip_codes,
  community_areas,
  census_tracts,
  wards
) FROM '/tmp/cta_stations.csv' DELIMITER ',' CSV HEADER;
