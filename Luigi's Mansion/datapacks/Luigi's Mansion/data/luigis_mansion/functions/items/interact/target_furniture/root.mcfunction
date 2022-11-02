tag @e[tag=interact,limit=1,distance=..0.2] add this_interact
execute if entity @s[scores={FurnitureSizeX=1..}] run function luigis_mansion:items/interact/target_furniture/collision_box_check
execute if entity @s[scores={FurnitureRadius=1..}] run function luigis_mansion:items/interact/target_furniture/collision_radius_check
tag @e[tag=interact,limit=1,tag=this_interact] remove this_interact