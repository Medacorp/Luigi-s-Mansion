function luigis_mansion:entities/furniture/tick

tag @s remove element_in_vacuum
tag @s remove element_in_dust
tag @s remove element_in_fire
tag @s remove element_in_water
tag @s remove element_in_ice
tag @s remove was_illuminated_furniture
tag @s[tag=illuminate_furniture] add was_illuminated_furniture
tag @s remove illuminate_furniture

execute if entity @s[tag=debug_furniture] run function luigis_mansion:entities/furniture/debug
execute if entity @s[tag=!debug_furniture] if score #debug_furniture Selected matches 1.. run function luigis_mansion:entities/furniture/debug