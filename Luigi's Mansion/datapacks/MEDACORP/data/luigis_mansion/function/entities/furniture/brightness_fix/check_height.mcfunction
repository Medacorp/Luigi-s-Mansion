function luigis_mansion:entities/furniture/brightness_fix/check_block
scoreboard players remove #temp FurnitureSizeHeight 1
execute unless score #temp Time matches 15 if score #temp FurnitureSizeHeight matches 1.. positioned ~ ~-0.1 ~ run function luigis_mansion:entities/furniture/brightness_fix/check_height