scoreboard players operation #temp PosX = @s PosX
scoreboard players operation #temp PosY = @s PosY
scoreboard players operation #temp PosZ = @s PosZ
scoreboard players operation #temp EntitySizeRadius = @s EntitySizeRadius
scoreboard players operation #temp2 PosX = #swinging PosX
scoreboard players operation #temp2 PosY = #swinging PosY
scoreboard players operation #temp2 PosZ = #swinging PosZ
scoreboard players operation #temp2 PosX -= #temp PosX
scoreboard players operation #temp2 PosY -= #temp PosY
scoreboard players operation #temp2 PosZ -= #temp PosZ
scoreboard players operation #temp2 PosX *= #temp2 PosX
scoreboard players operation #temp2 PosY *= #temp2 PosY
scoreboard players operation #temp2 PosZ *= #temp2 PosZ
scoreboard players operation #temp2 PosX += #temp2 PosY
scoreboard players operation #temp2 PosX += #temp2 PosZ
execute unless score #temp FurnitureRadius matches 1.. run scoreboard players add #temp EntitySizeRadius 5
execute if score #temp FurnitureRadius matches 1.. run scoreboard players operation #temp EntitySizeRadius += #temp FurnitureRadius
scoreboard players operation #temp EntitySizeRadius *= #temp EntitySizeRadius
execute if score #temp2 PosX <= #temp EntitySizeRadius run tag @s add hit_by_swinging_furniture
scoreboard players reset #temp PosX
scoreboard players reset #temp PosY
scoreboard players reset #temp PosZ
scoreboard players reset #temp EntitySizeRadius
scoreboard players reset #temp2 PosX
scoreboard players reset #temp2 PosY
scoreboard players reset #temp2 PosZ