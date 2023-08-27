create table user_info.login_info (
  no serial not null
  , id character varying(50) not null
  , password character varying(50) not null
  , name character varying(255) not null
  , created_on timestamp(6) with time zone default CURRENT_TIMESTAMP
  , primary key (no)
);
