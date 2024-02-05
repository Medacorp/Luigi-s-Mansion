teleport @s ^ ^0.1 ^
scoreboard players add @s FurnitureSizeUp 1
execute at @s unless score @s Steps = @s FurnitureSizeUp run function luigis_mansion:old_entities/furniture/type/tick/swinging/hit_pos/set_to_highest_y