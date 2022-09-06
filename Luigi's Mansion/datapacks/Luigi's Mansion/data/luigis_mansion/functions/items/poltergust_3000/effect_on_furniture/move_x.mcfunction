teleport @s ~-1 ~ ~
scoreboard players remove #x Steps 1
execute at @s if score #x Steps matches 1.. run function luigis_mansion:items/poltergust_3000/effect_on_furniture/move_x