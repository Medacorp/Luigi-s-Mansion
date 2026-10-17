teleport @s ~ ~-0.2 ~
execute at @s positioned ~ ~-1.45 ~ if entity @e[tag=same_room,tag=luigi,distance=..0.7,limit=1] run function luigis_mansion:entities/ice_spike/hit_player
execute at @s unless block ~ ~-0.45 ~ #luigis_mansion:ghosts_ignore run tag @s add breaking
scoreboard players remove #temp ActionTime 1
execute if score #temp ActionTime matches 1.. at @s run function luigis_mansion:entities/ice_spike/fall