tag @e[tag=interact,limit=1,distance=..0.2] add this_interact
execute store result score #interact PosX run data get entity @e[tag=this_interact,limit=1] Pos[0] 10
execute store result score #interact PosY run data get entity @e[tag=this_interact,limit=1] Pos[1] 10
execute store result score #interact PosZ run data get entity @e[tag=this_interact,limit=1] Pos[2] 10
execute if entity @s[scores={FurnitureSizeW=1..}] run function luigis_mansion:items/interact/target_furniture/collision_box_check
execute if entity @s[scores={FurnitureSizeF=1..}] run function luigis_mansion:items/interact/target_furniture/collision_rotated_box_check
execute if entity @s[scores={FurnitureRadius=1..}] run function luigis_mansion:items/interact/target_furniture/collision_radius_check
tag @e[tag=interact,limit=1,tag=this_interact] remove this_interact