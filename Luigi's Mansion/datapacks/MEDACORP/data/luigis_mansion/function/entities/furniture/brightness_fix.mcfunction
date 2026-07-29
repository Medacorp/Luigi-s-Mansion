execute unless data entity @s brightness run data modify entity @s brightness set value {block:0,sky:0}
data modify storage luigis_mansion:data macro set value {offset:0d}
execute if entity @s[scores={FurnitureSizeHeight=1..}] run scoreboard players operation #temp FurnitureSizeHeight = @s FurnitureSizeHeight
execute if entity @s[scores={FurnitureSizeUp=1..}] run scoreboard players operation #temp FurnitureSizeHeight = @s FurnitureSizeUp
execute if entity @s[scores={FurnitureSizeRadius=1..}] run scoreboard players operation #temp FurnitureSizeHeight = @s FurnitureSizeRadius
execute if entity @s[scores={FurnitureSizeRadius=1..}] run scoreboard players operation #temp FurnitureSizeHeight *= #2 Constants
scoreboard players operation #temp FurnitureSizeUp = #temp FurnitureSizeHeight
execute if entity @s[tag=!hanging_furniture,tag=!standing_furniture] run scoreboard players operation #temp FurnitureSizeUp /= #2 Constants
execute if entity @s[tag=!hanging_furniture] store result storage luigis_mansion:data macro.offset double 0.1 run scoreboard players get #temp FurnitureSizeUp
scoreboard players set #temp Time 0
execute positioned ^ ^ ^0.1 run function luigis_mansion:entities/furniture/brightness_fix/check_block
execute unless score #temp Time matches 15 run function luigis_mansion:entities/furniture/brightness_fix/go_to_top with storage luigis_mansion:data macro
scoreboard players reset #temp FurnitureSizeUp
scoreboard players reset #temp FurnitureSizeHeight
execute store result entity @s brightness.block int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time