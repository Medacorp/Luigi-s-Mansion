teleport @s ~ ~-0.2 ~
execute at @s if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..1,limit=1] run tag @s add collision
execute at @s unless block ~ ~1 ~ #luigis_mansion:ghosts_ignore run tag @s add collision
execute at @s[tag=collision] run function luigis_mansion:entities/ice_spike/collision
