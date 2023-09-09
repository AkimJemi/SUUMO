--create schema transportation_info;
drop table if exists transportation_info.area_prefecture; 

drop table if exists transportation_info.railway; 

drop table if exists transportation_info.metro; 

create table if not exists transportation_info.area_prefecture( 
    area_no character varying (10) not null
    , area_name character varying (50) not null
    , prefecture_no character varying (10) not null
    , prefecture_name character varying (50) not null
    , primary key ( 
        area_no
        , area_name
        , prefecture_no
        , prefecture_name
    )
); 

create table if not exists transportation_info.railway( 
    prefecture_no character varying (10) not null
    , railway_company_no character varying (10) not null
    , railway_company_name character varying (50) not null
    , railway_no character varying (10) not null
    , railway_name character varying (50) not null
    , primary key ( 
        prefecture_no
        , railway_company_no
        , railway_company_name
        , railway_no
        , railway_name
    )
); 

create table if not exists transportation_info.metro( 
    railway_company_no character varying (10) not null
    , railway_no character varying (10) not null
    , metro_no character varying (10) not null
    , metro_name character varying (50) not null
    , primary key ( 
        railway_company_no
        , railway_no
        , metro_no
        , metro_name
    )
); 
