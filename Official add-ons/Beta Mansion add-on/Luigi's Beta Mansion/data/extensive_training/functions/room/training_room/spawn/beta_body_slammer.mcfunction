data modify storage luigis_mansion:data entity set value {appear_type:"none",disappear_on_vanish:1b,health:1000,speed:10,flee_speed:20}
function luigis_beta_mansion:spawn_entities/ghost/forced_spawn/body_slammer
scoreboard players set @e[distance=..1,tag=hidden,limit=1] GhostGaught 3