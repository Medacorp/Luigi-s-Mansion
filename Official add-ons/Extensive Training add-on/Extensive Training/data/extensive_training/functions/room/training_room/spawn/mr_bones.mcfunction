data modify storage luigis_mansion:data entity set value {appear_type:"none",disappear_on_vanish:1b,health:3000,speed:20,flee_speed:20}
function luigis_mansion:spawn_entities/ghost/forced_spawn/mr_bones
scoreboard players set @e[distance=..1,tag=hidden,limit=1] GhostCaught 7