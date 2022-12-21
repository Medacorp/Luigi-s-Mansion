data modify storage luigis_mansion:data entity set value {appear_type:"none",disappear_on_vanish:1b,health:1,speed:0,flee_speed:0}
execute positioned ~ ~3 ~ run function luigis_mansion:spawn_entities/ghost/forced_spawn/purple_bomber
execute positioned ~ ~3 ~ run scoreboard players set @e[distance=..1,tag=hidden,limit=1] GhostCaught 1