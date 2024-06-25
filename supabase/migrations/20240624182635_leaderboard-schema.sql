drop table if exists players;

create type gender as enum ('m','f');
create table
  players (
    id bigint primary key generated always as identity not null,
    created_at timestamptz default now() not null,
    firstName text not null,
    lastName text not null,
    gender gender not null,
    country text not null,
    dob varchar not null,
    avatar varchar
  );