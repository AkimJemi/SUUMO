create database suumo;
CREATE USER akim WITH PASSWORD 'akim';
GRANT CONNECT ON DATABASE suumo TO akim;

CREATE schema user_info;
CREATE schema house_info;
