drop table if exists tournaments;

create type name as enum (
  'Australian Open','French Open','Wimbledon','US Open'
  );
create type current_status as enum (
  'not-started','draw-published','in-progress','semi-finals-completed','finished'
  );
create type season_order as enum ('1','2','3','4');

create table
  tournaments (
    id bigint primary key generated always as identity not null,
    created_at timestamptz default now() not null,
    name text not null,
    slug text unique not null,
    status current_status default 'not-started' not null,
    logo varchar not null,
    start_date timestamptz not null,
    end_date timestamptz not null,
    season_order int2 not null,
    events varchar array default array[]::varchar[]
  );