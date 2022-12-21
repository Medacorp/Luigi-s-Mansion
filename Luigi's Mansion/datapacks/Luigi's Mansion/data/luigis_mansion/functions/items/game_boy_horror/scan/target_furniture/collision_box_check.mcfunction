scoreboard players operation #temp PosX = @s PosX
scoreboard players operation #temp PosY = @s PosY
scoreboard players operation #temp PosZ = @s PosZ
scoreboard players operation #temp2 PosX = #temp PosX
scoreboard players operation #temp2 PosY = #temp PosY
scoreboard players operation #temp2 PosZ = #temp PosZ
scoreboard players operation #temp FurnitureSizeW = @s FurnitureSizeW
scoreboard players operation #temp FurnitureSizeH = @s FurnitureSizeH
scoreboard players operation #temp FurnitureSizeW /= #2 Constants
execute if entity @s[tag=!hanging_furniture,tag=!standing_furniture] run scoreboard players operation #temp FurnitureSizeH /= #2 Constants
scoreboard players operation #temp PosX -= #temp FurnitureSizeW
execute if entity @s[tag=!standing_furniture] run scoreboard players operation #temp PosY -= #temp FurnitureSizeH
scoreboard players operation #temp PosZ -= #temp FurnitureSizeW
scoreboard players operation #temp2 PosX += #temp FurnitureSizeW
execute if entity @s[tag=!hanging_furniture] run scoreboard players operation #temp2 PosY += #temp FurnitureSizeH
scoreboard players operation #temp2 PosZ += #temp FurnitureSizeW
execute if score #interact PosX >= #temp PosX if score #interact PosX <= #temp2 PosX if score #interact PosY >= #temp PosY if score #interact PosY <= #temp2 PosY if score #interact PosZ >= #temp PosZ if score #interact PosZ <= #temp2 PosZ run tag @s add hit
scoreboard players reset #temp PosX
scoreboard players reset #temp PosY
scoreboard players reset #temp PosZ
scoreboard players reset #temp FurnitureSizeW
scoreboard players reset #temp FurnitureSizeH
scoreboard players reset #temp2 PosX
scoreboard players reset #temp2 PosY
scoreboard players reset #temp2 PosZ