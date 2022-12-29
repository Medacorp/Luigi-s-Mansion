scoreboard players operation #temp PosX = @s PosX
scoreboard players operation #temp PosY = @s PosY
scoreboard players operation #temp PosZ = @s PosZ
scoreboard players operation #temp FurnitureRadius = @s FurnitureRadius
execute if entity @s[tag=hanging_furniture] run scoreboard players operation #temp PosY -= #temp FurnitureRadius
execute if entity @s[tag=standing_furniture] run scoreboard players operation #temp PosY += #temp FurnitureRadius
scoreboard players operation #temp2 PosX = #interact PosX
scoreboard players operation #temp2 PosY = #interact PosY
scoreboard players operation #temp2 PosZ = #interact PosZ
scoreboard players operation #temp2 PosX -= #temp PosX
scoreboard players operation #temp2 PosY -= #temp PosY
scoreboard players operation #temp2 PosZ -= #temp PosZ
scoreboard players operation #temp2 PosX *= #temp2 PosX
scoreboard players operation #temp2 PosY *= #temp2 PosY
scoreboard players operation #temp2 PosZ *= #temp2 PosZ
scoreboard players operation #temp2 PosX += #temp2 PosY
scoreboard players operation #temp2 PosX += #temp2 PosZ
scoreboard players operation #temp FurnitureRadius *= #temp FurnitureRadius
execute if score #temp2 PosX <= #temp FurnitureRadius run tag @s add hit
scoreboard players reset #temp PosX
scoreboard players reset #temp PosY
scoreboard players reset #temp PosZ
scoreboard players reset #temp FurnitureRadius
scoreboard players reset #temp2 PosX
scoreboard players reset #temp2 PosY
scoreboard players reset #temp2 PosZ