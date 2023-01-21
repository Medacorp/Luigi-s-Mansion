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

scoreboard players operation #temp3 PosX = #swinging PosX
scoreboard players operation #temp3 PosX < #temp2 PosX
scoreboard players operation #temp3 PosX > #temp PosX
scoreboard players operation #temp3 PosY = #swinging PosY
scoreboard players operation #temp3 PosY < #temp2 PosY
scoreboard players operation #temp3 PosY > #temp PosY
scoreboard players operation #temp3 PosZ = #swinging PosZ
scoreboard players operation #temp3 PosZ < #temp2 PosZ
scoreboard players operation #temp3 PosZ > #temp PosZ

scoreboard players operation #temp PosX = #swinging PosX
scoreboard players operation #temp PosY = #swinging PosY
scoreboard players operation #temp PosZ = #swinging PosZ
scoreboard players operation #temp PosX -= #temp3 PosX
scoreboard players operation #temp PosY -= #temp3 PosY
scoreboard players operation #temp PosZ -= #temp3 PosZ
execute unless score #temp FurnitureRadius matches 1.. run scoreboard players add #temp PosX 5
execute if score #temp FurnitureRadius matches 1.. run scoreboard players operation #temp PosX += #temp FurnitureRadius
scoreboard players operation #temp PosX *= #temp PosX
scoreboard players operation #temp PosY *= #temp PosY
scoreboard players operation #temp PosZ *= #temp PosZ
scoreboard players operation #temp PosX += #temp PosY
scoreboard players operation #temp PosX += #temp PosZ
execute if score #temp PosX matches ..1 run tag @s add hit_by_swinging_furniture

scoreboard players reset #temp PosX
scoreboard players reset #temp PosY
scoreboard players reset #temp PosZ
scoreboard players reset #temp EntitySizeW
scoreboard players reset #temp EntitySizeH
scoreboard players reset #temp2 PosX
scoreboard players reset #temp2 PosY
scoreboard players reset #temp2 PosZ
scoreboard players reset #temp3 PosX
scoreboard players reset #temp3 PosY
scoreboard players reset #temp3 PosZ