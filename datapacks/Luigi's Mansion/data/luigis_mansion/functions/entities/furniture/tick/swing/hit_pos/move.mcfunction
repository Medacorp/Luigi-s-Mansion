execute at @s if score #x Time matches 1 run teleport @s ^-0.5 ^ ^
execute at @s if score #z Time matches 1 run teleport @s ^ ^ ^-0.5
execute at @s if score #x Steps matches 1.. run function luigis_mansion:entities/furniture/tick/swing/hit_pos/move_x
execute at @s if score #y Steps matches 1.. run function luigis_mansion:entities/furniture/tick/swing/hit_pos/move_y
execute at @s if score #z Steps matches 1.. run function luigis_mansion:entities/furniture/tick/swing/hit_pos/move_z