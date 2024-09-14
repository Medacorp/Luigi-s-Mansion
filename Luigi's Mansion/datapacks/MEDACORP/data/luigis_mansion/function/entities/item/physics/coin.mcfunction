execute at @s positioned ~ ~0.01 ~ align y unless block ~ ~ ~ #luigis_mansion:items_ignore unless block ~ ~ ~ #minecraft:slabs run tag @s add in_block
execute at @s[tag=in_block] run teleport @s ~ ~0.1 ~
scoreboard players set @s[tag=in_block] Move 15
scoreboard players add @s[tag=in_block,tag=!in_block_motion_cap] Move 6

execute at @s[tag=!in_block] run function luigis_mansion:entities/item/physics/step/gravity
scoreboard players set @s[scores={Move=0},tag=keep_bouncing,tag=!falling] Move 12
execute unless entity @s[scores={Move=0}] at @s[tag=!in_block] run function luigis_mansion:entities/item/physics/step/horizontal_motion
execute unless entity @s[scores={Move=0}] at @s[tag=!in_block,tag=wall_bounce] if entity @s[x_rotation=-89..89] run function luigis_mansion:entities/item/physics/step/wall_bounce
tag @s remove in_block
execute at @s[scores={Move=0}] align y if block ~ ~ ~ #luigis_mansion:items_ignore unless block ~ ~ ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~ ~
execute at @s[scores={Move=0}] align y if block ~ ~ ~ #minecraft:slabs[type=bottom] positioned ~ ~0.5 ~ run teleport @s ~ ~ ~
execute at @s[tag=!wall_bounce] positioned ~ ~0.1 ~ run function luigis_mansion:entities/item/physics/step/prevent_collision

execute store result score @s HomeRotation run data get entity @s Pose.Head[0]
data modify entity @s[scores={Move=0,HomeRotation=0..},tag=!falling] Pose.Head[0] set value 90.0f
data modify entity @s[scores={Move=0,HomeRotation=..-1},tag=!falling] Pose.Head[0] set value -90.0f
execute unless entity @s[scores={Move=0}] store result entity @s Pose.Head[0] float 1 run scoreboard players add @s HomeRotation 10

$execute at @s if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..$(pick_up_range),limit=1] run function luigis_mansion:entities/item/physics/step/collect {pick_up_range:$(pick_up_range)}