create schema transportation_info; 

create table transportation_info.metro( 
    no serial not null UNIQUE
    , area character varying (50) not null
    , prefecture character varying (50) not null
    , railway_company character varying (50) not null
    , railway character varying (50) not null
    , created_on timestamp (6) with time zone default CURRENT_TIMESTAMP
    , primary key (area, prefecture,railway_company, railway)
); 

