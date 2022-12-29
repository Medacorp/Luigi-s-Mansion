scoreboard players operation #temp PosX = @s PosX
scoreboard players operation #temp PosY = @s PosY
scoreboard players operation #temp PosZ = @s PosZ
scoreboard players operation #temp2 PosX = #temp PosX
scoreboard players operation #temp2 PosY = #temp PosY
scoreboard players operation #temp2 PosZ = #temp PosZ
scoreboard players operation #temp EntitySizeW = @s EntitySizeW
scoreboard players operation #temp EntitySizeH = @s EntitySizeH
scoreboard players operation #temp EntitySizeW /= #2 Constants
scoreboard players operation #temp EntitySizeH /= #2 Constants
scoreboard players operation #temp PosX -= #temp EntitySizeW
scoreboard players operation #temp PosY -= #temp EntitySizeH
scoreboard players operation #temp PosZ -= #temp EntitySizeW
scoreboard players operation #temp2 PosX += #temp EntitySizeW
scoreboard players operation #temp2 PosY += #temp EntitySizeH
scoreboard players operation #temp2 PosZ += #temp EntitySizeW
execute if score #interact PosX >= #temp PosX if score #interact PosX <= #temp2 PosX if score #interact PosY >= #temp PosY if score #interact PosY <= #temp2 PosY if score #interact PosZ >= #temp PosZ if score #interact PosZ <= #temp2 PosZ run tag @s add scanned
scoreboard players reset #temp PosX
scoreboard players reset #temp PosY
scoreboard players reset #temp PosZ
scoreboard players reset #temp EntitySizeW
scoreboard players reset #temp EntitySizeH
scoreboard players reset #temp2 PosX
scoreboard players reset #temp2 PosY
scoreboard players reset #temp2 PosZ