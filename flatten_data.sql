SELECT 
    first_name, 
    last_name,
    cs.name as class,
    cr.identifier as sail_number,
    f.name as fleet_name,
    s.name as series_name,
    ra.name as race_name,
    r.elapsed_time,
    r.corrected_time,
    r.laps,
    r.status,
    r.discarded,
    r.points,
    r.id as race_id,
    e.rank as series_rank,
    e.final_score as series_score,
    ra.date,
    cl.name as club_name
FROM `results` r 
    join entries e on r.entry_id = e.id 
    join competitors c on c.id = e.competitor_id
    join races ra on ra.id = r.race_id
    join series s on s.id = ra.series_id
    join clubs cl on cl.id = s.club_id
    join classifications cs on cs.id = e.classification_id 
    join crafts cr on cr.id = r.craft_id
    join fleets f on f.id = e.fleet_id
