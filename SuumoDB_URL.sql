CREATE SCHEMA others; 
drop table others.suumo_url_collection;
create table others.suumo_url_collection( 
    no serial not null
    , kubun text 
    , url text not null
    , primary key (no, url)
);

-- kubun : area, chintai
