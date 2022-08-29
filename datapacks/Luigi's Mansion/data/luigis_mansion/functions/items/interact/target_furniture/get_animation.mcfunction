function luigis_mansion:items/interact/target_furniture/root
execute if entity @s[tag=hit] run function luigis_mansion:entities/furniture/interact_animation
tag @s remove hit