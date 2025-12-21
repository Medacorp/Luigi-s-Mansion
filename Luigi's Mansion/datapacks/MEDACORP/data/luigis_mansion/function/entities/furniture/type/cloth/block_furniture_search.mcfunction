scoreboard players operation #temp3 PositionY = @s PositionY
scoreboard players operation #temp4 PositionY = @s PositionY
execute as @s[scores={FurnitureSizeRadius=1..}] run scoreboard players operation #temp FurnitureSize = @s FurnitureSizeRadius
execute as @s[scores={FurnitureSizeHeight=1..}] run scoreboard players operation #temp FurnitureSize = @s FurnitureSizeHeight
execute as @s[scores={FurnitureSizeUp=1..}] run scoreboard players operation #temp FurnitureSize = @s FurnitureSizeUp
execute if entity @s[tag=!hanging_furniture,tag=!standing_furniture] run scoreboard players operation #temp FurnitureSize /= #2 Constants
execute if entity @s[tag=hanging_furniture] run scoreboard players operation #temp3 PositionY -= #temp FurnitureSize
execute if entity @s[tag=standing_furniture] run scoreboard players operation #temp4 PositionY += #temp FurnitureSize
execute if score #temp3 PositionY >= #temp PositionY if score #temp3 PositionY <= #temp2 PositionY run tag @s add block_this_furniture
execute if score #temp4 PositionY >= #temp PositionY if score #temp4 PositionY <= #temp2 PositionY run tag @s add block_this_furniture