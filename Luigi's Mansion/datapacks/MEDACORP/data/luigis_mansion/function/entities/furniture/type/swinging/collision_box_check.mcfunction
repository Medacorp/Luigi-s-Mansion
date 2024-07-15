scoreboard players operation #temp PositionX = @s PositionX
scoreboard players operation #temp PositionY = @s PositionY
scoreboard players operation #temp PositionZ = @s PositionZ
scoreboard players operation #temp2 PositionX = #temp PositionX
scoreboard players operation #temp2 PositionY = #temp PositionY
scoreboard players operation #temp2 PositionZ = #temp PositionZ
scoreboard players operation #temp EntitySizeWidth = @s EntitySizeWidth
scoreboard players operation #temp EntitySizeHeight = @s EntitySizeHeight
scoreboard players operation #temp EntitySizeWidth /= #2 Constants
scoreboard players operation #temp EntitySizeHeight /= #2 Constants
scoreboard players operation #temp PositionX -= #temp EntitySizeWidth
scoreboard players operation #temp PositionY -= #temp EntitySizeHeight
scoreboard players operation #temp PositionZ -= #temp EntitySizeWidth
scoreboard players operation #temp2 PositionX += #temp EntitySizeWidth
scoreboard players operation #temp2 PositionY += #temp EntitySizeHeight
scoreboard players operation #temp2 PositionZ += #temp EntitySizeWidth

scoreboard players operation #temp3 PositionX = #swinging PositionX
scoreboard players operation #temp3 PositionX < #temp2 PositionX
scoreboard players operation #temp3 PositionX > #temp PositionX
scoreboard players operation #temp3 PositionY = #swinging PositionY
scoreboard players operation #temp3 PositionY < #temp2 PositionY
scoreboard players operation #temp3 PositionY > #temp PositionY
scoreboard players operation #temp3 PositionZ = #swinging PositionZ
scoreboard players operation #temp3 PositionZ < #temp2 PositionZ
scoreboard players operation #temp3 PositionZ > #temp PositionZ

scoreboard players operation #temp PositionX = #swinging PositionX
scoreboard players operation #temp PositionY = #swinging PositionY
scoreboard players operation #temp PositionZ = #swinging PositionZ
scoreboard players operation #temp PositionX -= #temp3 PositionX
scoreboard players operation #temp PositionY -= #temp3 PositionY
scoreboard players operation #temp PositionZ -= #temp3 PositionZ
scoreboard players operation #temp PositionX *= #temp PositionX
scoreboard players operation #temp PositionY *= #temp PositionY
scoreboard players operation #temp PositionZ *= #temp PositionZ
scoreboard players operation #temp PositionX += #temp PositionY
scoreboard players operation #temp PositionX += #temp PositionZ
execute unless score #temp FurnitureSizeRadius matches 1.. run scoreboard players remove #temp PositionX 25
execute if score #temp FurnitureSizeRadius matches 1.. run scoreboard players operation #temp PositionY = #temp FurnitureSizeRadius
execute if score #temp FurnitureSizeRadius matches 1.. run scoreboard players operation #temp PositionY *= #temp FurnitureSizeRadius
execute if score #temp FurnitureSizeRadius matches 1.. run scoreboard players operation #temp PositionX = #temp PositionY
execute if score #temp PositionX matches ..1 run tag @s add hit_by_swinging_furniture

scoreboard players reset #temp PositionX
scoreboard players reset #temp PositionY
scoreboard players reset #temp PositionZ
scoreboard players reset #temp EntitySizeWidth
scoreboard players reset #temp EntitySizeHeight
scoreboard players reset #temp2 PositionX
scoreboard players reset #temp2 PositionY
scoreboard players reset #temp2 PositionZ
scoreboard players reset #temp3 PositionX
scoreboard players reset #temp3 PositionY
scoreboard players reset #temp3 PositionZ