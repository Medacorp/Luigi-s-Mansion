execute at @s positioned ~ ~1.5 ~ align y unless block ~ ~ ~ #luigis_mansion:items_ignore unless block ~ ~ ~ #minecraft:slabs at @s run teleport @s ~ ~0.1 ~

execute positioned ~ ~1.3 ~ if block ^ ^ ^0.3 #luigis_mansion:items_ignore unless block ^ ^ ^0.3 #minecraft:slabs at @s run teleport @s ^ ^ ^0.1

execute store result score @s HomeRot run data get entity @s Pose.Head[0] 1
execute positioned ~ ~1.3 ~ if block ^ ^ ^0.3 #luigis_mansion:items_ignore unless block ^ ^ ^0.3 #minecraft:slabs store result entity @s Pose.Head[0] float 1 run scoreboard players add @s HomeRot 10

execute at @s positioned ~ ~1.5 ~ if block ~ ~0.6 ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~0.1 ~

execute at @s positioned ~ ~1.5 ~ if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] run tag @s add picked_up
execute at @s positioned ~ ~1.5 ~ run tag @a[tag=same_room,tag=!spectator,distance=..0.7,limit=1] add collector
execute at @s positioned ~ ~1.5 ~ unless entity @a[tag=collector,limit=1] as @e[tag=same_room,tag=game_boy_horror_location,tag=!spectator,tag=player,distance=..0.7,limit=1] run function luigis_mansion:entities/game_boy_horror_location/tag_for_collecting