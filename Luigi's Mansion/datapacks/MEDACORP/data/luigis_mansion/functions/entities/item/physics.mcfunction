$execute at @s positioned ~ ~$(physics_offset) ~ positioned ~ ~0.1 ~ align y unless block ~ ~ ~ #luigis_mansion:items_ignore unless block ~ ~ ~ #minecraft:slabs at @s run teleport @s ~ ~0.1 ~

$execute at @s positioned ~ ~$(physics_offset) ~ run function luigis_mansion:entities/item/physics_step/gravity
scoreboard players set @s[scores={Move=0},tag=keep_bouncing,tag=!falling] Move 12
$execute unless entity @s[scores={Move=0}] at @s positioned ~ ~$(physics_offset) ~ run function luigis_mansion:entities/item/physics_step/horizontal_motion
$execute unless entity @s[scores={Move=0}] at @s[tag=wall_bounce] positioned ~ ~$(physics_offset) ~ run function luigis_mansion:entities/item/physics_step/wall_bounce
$execute at @s[scores={Move=0}] positioned ~ ~$(physics_offset) ~ align y if block ~ ~ ~ #luigis_mansion:items_ignore unless block ~ ~ ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~-$(physics_offset) ~
$execute at @s[scores={Move=0}] positioned ~ ~$(physics_offset) ~ align y if block ~ ~ ~ #minecraft:slabs[type=bottom] positioned ~ ~0.5 ~ run teleport @s ~ ~-$(physics_offset) ~
$execute at @s[tag=!wall_bounce] positioned ~ ~$(physics_offset) ~ positioned ~ ~0.1 ~ run function luigis_mansion:entities/item/physics_step/prevent_collision

execute at @s run function luigis_mansion:old_animations/money/rotate

$execute at @s positioned ~ ~$(physics_offset) ~ if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..$(pick_up_range),limit=1] run function luigis_mansion:entities/item/physics_step/collect {pick_up_range:$(pick_up_range)}