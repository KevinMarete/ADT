update regimen set map = 0 where map not in (select id from sync_regimen )//