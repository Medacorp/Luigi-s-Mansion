data modify storage luigis_mansion:data entity set value {disappear_on_vanish:0b,health:25000,speed:100,flee_speed:100}
function luigis_mansion:spawn_entities/ghost/speedy_spirit
tag @e[distance=..1,tag=hidden,limit=1] add spawn
scoreboard players set @e[distance=..1,tag=hidden,limit=1] GhostCaught 1