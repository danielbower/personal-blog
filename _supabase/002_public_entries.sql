-- Public, per-entry view for the website's table: date and units only.
-- Descriptions, ids and timestamps stay private in drink_entries.
-- Deliberately NOT security_invoker: it runs with the owner's rights,
-- so the site can read these two columns without access to the raw table.
create view public.public_entries as
select drank_on, units
from public.drink_entries;

revoke all on public.public_entries from anon, authenticated;
grant select on public.public_entries to anon, authenticated;
