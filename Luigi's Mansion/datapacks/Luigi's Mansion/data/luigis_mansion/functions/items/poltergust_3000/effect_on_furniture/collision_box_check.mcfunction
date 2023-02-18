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
scoreboard players operation #temp PosX -= #temp FurnitureSizeWidth
execute if entity @s[tag=!standing_furniture] run scoreboard players operation #temp PosY -= #temp FurnitureSizeHeight
scoreboard players operation #temp PosZ -= #temp FurnitureSizeWidth
scoreboard players operation #temp2 PosX += #temp FurnitureSizeWidth
execute if entity @s[tag=!hanging_furniture] run scoreboard players operation #temp2 PosY += #temp FurnitureSizeHeight
scoreboard players operation #temp2 PosZ += #temp FurnitureSizeWidth

scoreboard players operation #temp3 PosX = #interact PosX
scoreboard players operation #temp3 PosX < #temp2 PosX
scoreboard players operation #temp3 PosX > #temp PosX
scoreboard players operation #temp3 PosY = #interact PosY
scoreboard players operation #temp3 PosY < #temp2 PosY
scoreboard players operation #temp3 PosY > #temp PosY
scoreboard players operation #temp3 PosZ = #interact PosZ
scoreboard players operation #temp3 PosZ < #temp2 PosZ
scoreboard players operation #temp3 PosZ > #temp PosZ

scoreboard players operation #temp PosX = #interact PosX
scoreboard players operation #temp PosY = #interact PosY
scoreboard players operation #temp PosZ = #interact PosZ
scoreboard players operation #temp PosX -= #temp3 PosX
scoreboard players operation #temp PosY -= #temp3 PosY
scoreboard players operation #temp PosZ -= #temp3 PosZ
scoreboard players operation #temp PosX *= #temp PosX
scoreboard players operation #temp PosY *= #temp PosY
scoreboard players operation #temp PosZ *= #temp PosZ
scoreboard players operation #temp PosX += #temp PosY
scoreboard players operation #temp PosX += #temp PosZ
execute if score #temp PosX matches ..25 run tag @s add hit_by_poltergust

scoreboard players reset #temp PosX
scoreboard players reset #temp PosY
scoreboard players reset #temp PosZ
scoreboard players reset #temp FurnitureSizeWidth
scoreboard players reset #temp FurnitureSizeHeight
scoreboard players reset #temp2 PosX
scoreboard players reset #temp2 PosY
scoreboard players reset #temp2 PosZ
scoreboard players reset #temp3 PosX
scoreboard players reset #temp3 PosY
scoreboard players reset #temp3 PosZ