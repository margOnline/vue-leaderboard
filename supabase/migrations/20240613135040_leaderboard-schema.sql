drop table if exists gamers;

create table
  gamers (
    id bigint primary key generated always as identity not null,
    created_at timestamptz default now() not null,
    username text not null,
    email text unique not null,
    password text not null,
    avatar varchar
  );