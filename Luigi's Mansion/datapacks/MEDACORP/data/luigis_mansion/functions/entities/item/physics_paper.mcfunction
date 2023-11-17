$execute at @s positioned ~ ~$(physics_offset) ~ positioned ~ ~0.1 ~ align y unless block ~ ~ ~ #luigis_mansion:items_ignore unless block ~ ~ ~ #minecraft:slabs at @s run teleport @s ~ ~0.1 ~

execute if entity @s[x_rotation=-90..0] store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]

$execute at @s positioned ~ ~$(physics_offset) ~ if block ^ ^ ^0.3 #luigis_mansion:items_ignore unless block ^ ^ ^0.3 #minecraft:slabs at @s run teleport @s ^ ^ ^0.1
$execute at @s positioned ~ ~$(physics_offset) ~ unless block ^ ^ ^0.3 #luigis_mansion:items_ignore at @s run teleport @s ~ ~ ~ ~ 90
$execute at @s positioned ~ ~$(physics_offset) ~ unless block ~ ~-0.1 ~ #luigis_mansion:items_ignore align y if block ~ ~ ~ #luigis_mansion:items_ignore unless block ~ ~ ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~-$(physics_offset) ~
$execute at @s positioned ~ ~$(physics_offset) ~ unless block ~ ~-0.1 ~ #luigis_mansion:items_ignore align y if block ~ ~ ~ #minecraft:slabs[type=bottom] positioned ~ ~0.5 ~ run teleport @s ~ ~-$(physics_offset) ~

execute at @s run teleport @s ~ ~ ~ ~ ~1

execute store result score @s HomeRotation run data get entity @s Pose.Head[0]
$execute positioned ~ ~$(physics_offset) ~ if block ^ ^ ^0.3 #luigis_mansion:items_ignore unless block ^ ^ ^0.3 #minecraft:slabs store result entity @s Pose.Head[0] float 1 run scoreboard players add @s HomeRotation 10

$execute at @s positioned ~ ~$(physics_offset) ~ if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..$(pick_up_range),limit=1] run function luigis_mansion:entities/item/physics_step/collect {pick_up_range:$(pick_up_range)}