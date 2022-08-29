execute at @s if score #x Time matches 1 run teleport @s ~-0.5 ~ ~
execute at @s if score #y Time matches 1 run teleport @s ~ ~-0.5 ~
execute at @s if score #z Time matches 1 run teleport @s ~ ~ ~-0.5
execute at @s if score #x Steps matches 1.. run function luigis_mansion:items/poltergust_3000/effect_on_furniture/move_x
execute at @s if score #y Steps matches 1.. run function luigis_mansion:items/poltergust_3000/effect_on_furniture/move_y
execute at @s if score #z Steps matches 1.. run function luigis_mansion:items/poltergust_3000/effect_on_furniture/move_z