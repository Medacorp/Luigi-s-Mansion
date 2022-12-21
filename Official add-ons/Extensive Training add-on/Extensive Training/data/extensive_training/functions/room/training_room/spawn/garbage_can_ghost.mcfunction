data modify storage luigis_mansion:data entity set value {disappear_on_vanish:1b,health:4000,speed:0,flee_speed:20}
function luigis_mansion:spawn_entities/ghost/forced_spawn/garbage_can_ghost
scoreboard players set @e[distance=..1,tag=hidden,limit=1] GhostCaught 9