data modify storage luigis_mansion:data entity set value {appear_type:"none",attack_type:"basher",disappear_on_vanish:1b,health:1000,speed:20,flee_speed:20}
function luigis_mansion:spawn_entities/ghost/speedy_spirit
scoreboard players set @e[distance=..1,tag=hidden,limit=1] GhostCaught 3
scoreboard players set #training_room Selected 1