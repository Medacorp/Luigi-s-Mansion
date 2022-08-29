teleport @s ~ ~-1 ~
scoreboard players remove #y Steps 1
execute at @s if score #y Steps matches 1.. run function luigis_mansion:items/interact/target_furniture/move_y