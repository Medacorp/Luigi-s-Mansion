teleport @s ~ ~-0.2 ~
execute at @s if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] run function luigis_mansion:entities/ice_spike/hit_player
execute at @s unless block ~ ~1 ~ #luigis_mansion:ghosts_ignore run tag @s add breaking
