scoreboard players operation #temp PosX = @s PosX
scoreboard players operation #temp PosY = @s PosY
scoreboard players operation #temp PosZ = @s PosZ
scoreboard players operation #temp2 PosX = #temp PosX
scoreboard players operation #temp2 PosY = #temp PosY
scoreboard players operation #temp2 PosZ = #temp PosZ
scoreboard players operation #temp FurnitureSizeWidth = @s FurnitureSizeWidth
scoreboard players operation #temp FurnitureSizeHeight = @s FurnitureSizeHeight
scoreboard players operation #temp FurnitureSizeWidth /= #2 Constants
execute if entity @s[tag=!hanging_furniture,tag=!standing_furniture] run scoreboard players operation #temp FurnitureSizeHeight /= #2 Constants
scoreboard players operation #temp FurnitureSizeZ /= #2 Constants
scoreboard players operation #temp PosX -= #temp FurnitureSizeWidth
execute if entity @s[tag=!standing_furniture] run scoreboard players operation #temp PosY -= #temp FurnitureSizeHeight
scoreboard players operation #temp PosZ -= #temp FurnitureSizeWidth
scoreboard players operation #temp2 PosX += #temp FurnitureSizeWidth
execute if entity @s[tag=!hanging_furniture] run scoreboard players operation #temp2 PosY += #temp FurnitureSizeHeight
scoreboard players operation #temp2 PosZ += #temp FurnitureSizeWidth
execute if score #interact PosX >= #temp PosX if score #interact PosX <= #temp2 PosX if score #interact PosY >= #temp PosY if score #interact PosY <= #temp2 PosY if score #interact PosZ >= #temp PosZ if score #interact PosZ <= #temp2 PosZ run tag @s add hit
scoreboard players reset #temp PosX
scoreboard players reset #temp PosY
scoreboard players reset #temp PosZ
scoreboard players reset #temp FurnitureSizeWidth
scoreboard players reset #temp FurnitureSizeHeight
scoreboard players reset #temp2 PosX
scoreboard players reset #temp2 PosY
scoreboard players reset #temp2 PosZ