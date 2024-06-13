scoreboard players operation #temp PositionX = @s PositionX
scoreboard players operation #temp PositionY = @s PositionY
scoreboard players operation #temp PositionZ = @s PositionZ
scoreboard players operation #temp2 PositionX = #temp PositionX
scoreboard players operation #temp2 PositionY = #temp PositionY
scoreboard players operation #temp2 PositionZ = #temp PositionZ
scoreboard players operation #temp FurnitureSizeWidth = @s FurnitureSizeWidth
scoreboard players operation #temp FurnitureSizeHeight = @s FurnitureSizeHeight
scoreboard players operation #temp FurnitureSizeWidth /= #2 Constants
execute if entity @s[tag=!hanging_furniture,tag=!standing_furniture] run scoreboard players operation #temp FurnitureSizeHeight /= #2 Constants
scoreboard players operation #temp PositionX -= #temp FurnitureSizeWidth
execute if entity @s[tag=!standing_furniture] run scoreboard players operation #temp PositionY -= #temp FurnitureSizeHeight
scoreboard players operation #temp PositionZ -= #temp FurnitureSizeWidth
scoreboard players operation #temp2 PositionX += #temp FurnitureSizeWidth
execute if entity @s[tag=!hanging_furniture] run scoreboard players operation #temp2 PositionY += #temp FurnitureSizeHeight
scoreboard players operation #temp2 PositionZ += #temp FurnitureSizeWidth
execute if score #interact PositionX >= #temp PositionX if score #interact PositionX <= #temp2 PositionX if score #interact PositionY >= #temp PositionY if score #interact PositionY <= #temp2 PositionY if score #interact PositionZ >= #temp PositionZ if score #interact PositionZ <= #temp2 PositionZ run tag @s add hit
scoreboard players reset #temp PositionX
scoreboard players reset #temp PositionY
scoreboard players reset #temp PositionZ
scoreboard players reset #temp FurnitureSizeWidth
scoreboard players reset #temp FurnitureSizeHeight
scoreboard players reset #temp2 PositionX
scoreboard players reset #temp2 PositionY
scoreboard players reset #temp2 PositionZ