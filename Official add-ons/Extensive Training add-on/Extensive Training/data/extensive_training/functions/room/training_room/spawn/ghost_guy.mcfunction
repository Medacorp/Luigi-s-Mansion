data modify storage luigis_mansion:data entity set value {appear_type:"none",disappear_on_vanish:1b,health:2000,speed:10,flee_speed:20}
execute if predicate luigis_mansion:50_50 run data modify storage luigis_mansion:data entity merge value {attack_type:"spin"}
function luigis_mansion:spawn_entities/ghost/forced_spawn/ghost_guy
scoreboard players set @e[distance=..1,tag=hidden,limit=1] GhostCaught 5