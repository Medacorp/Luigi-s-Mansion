data modify storage luigis_mansion:data entity set value {appear_type:"none",disappear_on_vanish:1b,health:1000,speed:10,flee_speed:20}
function luigis_mansion:spawn_entities/ghost/forced_spawn/temper_terror
scoreboard players set @e[distance=..1,tag=hidden,limit=1] GhostCaught 3