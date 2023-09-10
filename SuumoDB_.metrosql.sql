--create schema transportation_info;
drop table if exists transportation_info.area_prefecture; 

drop table if exists transportation_info.railway; 

drop table if exists transportation_info.metro; 

truncate transportation_info.area_prefecture; 

truncate transportation_info.railway; 

truncate transportation_info.metro; 

create table if not exists transportation_info.area_prefecture( 
    area_no character varying (10) not null
    , area character varying (15) not null
    , area_name character varying (15) not null
    , prefecture_no character varying (15) not null
    , prefecture character varying (15) not null
    , prefecture_name character varying (15) not null
    , primary key ( 
        area_no
        , area
        , area_name
        , prefecture_no
        , prefecture
        , prefecture_name
    )
); 

UPDATE transportation_info.area_prefecture
set area = 'hokkaido'
where area_name = 'ÝÁú­Ô³';
UPDATE transportation_info.area_prefecture
set area = 'tohoku'
where area_name = 'ÔÔÝÁ';
UPDATE transportation_info.area_prefecture
set area = 'koshinetsu'
where area_name = 'Ë£ãáêÆ?ÝÁ×Á';
UPDATE transportation_info.area_prefecture
set area = 'kanto'
where area_name = '?ÔÔ';
UPDATE transportation_info.area_prefecture
set area = 'tokai'
where area_name = 'ÔÔú­';
UPDATE transportation_info.area_prefecture
set area = 'chugoku'
where area_name = 'ñé?';
UPDATE transportation_info.area_prefecture
set area = 'kansai'
where area_name = '?à¤';
UPDATE transportation_info.area_prefecture
set area = 'shikoku'
where area_name = 'ÞÌ?';
UPDATE transportation_info.area_prefecture
set area = 'kyushu'
where area_name = 'Îúñ¶?õø?';


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

