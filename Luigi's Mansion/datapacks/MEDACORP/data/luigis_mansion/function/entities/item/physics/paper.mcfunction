execute at @s positioned ~ ~0.01 ~ align y unless block ~ ~ ~ #luigis_mansion:items_ignore unless block ~ ~ ~ #minecraft:slabs run tag @s add in_block
execute at @s[tag=in_block] run teleport @s ~ ~0.1 ~
scoreboard players set @s[tag=in_block] Move 15
scoreboard players add @s[tag=in_block,tag=!in_block_motion_cap] Move 6

scoreboard players add @s[tag=!in_block,scores={Move=1..}] Move 1
execute at @s[tag=!in_block,scores={Move=1..}] run function luigis_mansion:entities/item/physics/step/gravity
execute if entity @s[x_rotation=-90..0] store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]

execute at @s[tag=!in_block] if block ^ ^ ^0.3 #luigis_mansion:items_ignore unless block ^ ^ ^0.3 #minecraft:slabs at @s run teleport @s ^ ^ ^0.1
execute at @s[tag=!in_block,scores={Move=0},tag=!falling] unless block ^ ^ ^0.3 #luigis_mansion:items_ignore at @s run teleport @s ~ ~ ~ ~ 90
execute at @s[tag=!in_block] unless block ~ ~-0.1 ~ #luigis_mansion:items_ignore align y if block ~ ~ ~ #luigis_mansion:items_ignore unless block ~ ~ ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~ ~
execute at @s[tag=!in_block] unless block ~ ~-0.1 ~ #luigis_mansion:items_ignore align y if block ~ ~ ~ #minecraft:slabs[type=bottom] positioned ~ ~0.5 ~ run teleport @s ~ ~ ~

execute at @s[tag=!in_block] run teleport @s ~ ~ ~ ~ ~1
tag @s remove in_block

execute store result score @s HomeRotation run data get entity @s Pose.Head[0]
execute if block ^ ^ ^0.3 #luigis_mansion:items_ignore unless block ^ ^ ^0.3 #minecraft:slabs store result entity @s Pose.Head[0] float 1 run scoreboard players add @s HomeRotation 10

$execute at @s if entity @e[tag=same_room,tag=luigi,distance=..$(pick_up_range),limit=1] run function luigis_mansion:entities/item/physics/step/collect {pick_up_range:$(pick_up_range)}