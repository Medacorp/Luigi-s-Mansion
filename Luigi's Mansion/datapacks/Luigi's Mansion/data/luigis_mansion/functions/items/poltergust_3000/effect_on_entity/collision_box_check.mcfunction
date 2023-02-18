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
scoreboard players reset #temp EntitySizeWidth
scoreboard players reset #temp EntitySizeHeight
scoreboard players reset #temp2 PosX
scoreboard players reset #temp2 PosY
scoreboard players reset #temp2 PosZ
scoreboard players reset #temp3 PosX
scoreboard players reset #temp3 PosY
scoreboard players reset #temp3 PosZ