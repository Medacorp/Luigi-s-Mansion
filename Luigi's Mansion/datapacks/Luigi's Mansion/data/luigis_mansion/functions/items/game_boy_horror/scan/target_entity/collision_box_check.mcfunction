scoreboard players operation #temp PosX = @s PosX
scoreboard players operation #temp PosY = @s PosY
scoreboard players operation #temp PosZ = @s PosZ
scoreboard players operation #temp2 PosX = #temp PosX
scoreboard players operation #temp2 PosY = #temp PosY
scoreboard players operation #temp2 PosZ = #temp PosZ
scoreboard players operation #temp EntitySizeWidth = @s EntitySizeWidth
scoreboard players operation #temp EntitySizeHeight = @s EntitySizeHeight
scoreboard players operation #temp EntitySizeWidth /= #2 Constants
scoreboard players operation #temp EntitySizeHeight /= #2 Constants
scoreboard players operation #temp PosX -= #temp EntitySizeWidth
scoreboard players operation #temp PosY -= #temp EntitySizeHeight
scoreboard players operation #temp PosZ -= #temp EntitySizeWidth
scoreboard players operation #temp2 PosX += #temp EntitySizeWidth
scoreboard players operation #temp2 PosY += #temp EntitySizeHeight
scoreboard players operation #temp2 PosZ += #temp EntitySizeWidth
execute if score #interact PosX >= #temp PosX if score #interact PosX <= #temp2 PosX if score #interact PosY >= #temp PosY if score #interact PosY <= #temp2 PosY if score #interact PosZ >= #temp PosZ if score #interact PosZ <= #temp2 PosZ run tag @s add scanned
scoreboard players reset #temp PosX
scoreboard players reset #temp PosY
scoreboard players reset #temp PosZ
scoreboard players reset #temp EntitySizeWidth
scoreboard players reset #temp EntitySizeHeight
scoreboard players reset #temp2 PosX
scoreboard players reset #temp2 PosY
scoreboard players reset #temp2 PosZ