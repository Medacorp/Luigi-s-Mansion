data modify storage luigis_mansion:data entity set value {disappear_on_vanish:1b,health:1,speed:0,flee_speed:0}
function luigis_mansion:spawn_entities/ghost/forced_spawn/bowling_ghost
scoreboard players set @e[distance=..1,tag=hidden,limit=1] GhostCaught 1