-- One row per drinking occasion; a 0-unit row records a dry day.
create table public.drink_entries (
  id          bigint generated always as identity primary key,
  drank_on    date          not null,
  description text          not null,
  units       numeric(4,1)  not null check (units >= 0),
  created_at  timestamptz   not null default now()
);

create index drink_entries_drank_on_idx on public.drink_entries (drank_on);

-- Lock the raw table: RLS on with no policies, plus no grants,
-- so the public API keys can neither read nor write it.
alter table public.drink_entries enable row level security;
revoke all on public.drink_entries from anon, authenticated;

-- Public, aggregate-only view for the website chart.
-- Deliberately NOT security_invoker: it runs with the owner's rights,
-- so the site can read weekly totals without seeing individual entries.
create view public.weekly_totals as
with daily as (
  select drank_on, sum(units) as units
  from public.drink_entries
  group by drank_on
)
select
  date_trunc('week', drank_on::timestamp)::date as week_start,  -- Monday
  round(sum(units), 1)                          as total_units,
  count(*)                                      as days_logged,
  count(*) filter (where units = 0)             as dry_days
from daily
group by 1;

revoke all on public.weekly_totals from anon, authenticated;
grant select on public.weekly_totals to anon, authenticated;
