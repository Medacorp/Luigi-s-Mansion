scoreboard players operation #temp PositionX = @s PositionX
scoreboard players operation #temp PositionY = @s PositionY
scoreboard players operation #temp PositionZ = @s PositionZ
scoreboard players operation #temp FurnitureSizeRadius = @s FurnitureSizeRadius
execute if entity @s[tag=hanging_furniture] run scoreboard players operation #temp PositionY -= #temp FurnitureSizeRadius
execute if entity @s[tag=standing_furniture] run scoreboard players operation #temp PositionY += #temp FurnitureSizeRadius
scoreboard players operation #temp2 PositionX = #interact PositionX
scoreboard players operation #temp2 PositionY = #interact PositionY
scoreboard players operation #temp2 PositionZ = #interact PositionZ
scoreboard players operation #temp2 PositionX -= #temp PositionX
scoreboard players operation #temp2 PositionY -= #temp PositionY
scoreboard players operation #temp2 PositionZ -= #temp PositionZ
scoreboard players operation #temp2 PositionX *= #temp2 PositionX
scoreboard players operation #temp2 PositionY *= #temp2 PositionY
scoreboard players operation #temp2 PositionZ *= #temp2 PositionZ
scoreboard players operation #temp2 PositionX += #temp2 PositionY
scoreboard players operation #temp2 PositionX += #temp2 PositionZ
scoreboard players operation #temp2 FurnitureSizeRadius = #temp FurnitureSizeRadius
scoreboard players add #temp FurnitureSizeRadius 5
scoreboard players add #temp2 FurnitureSizeRadius 4
scoreboard players operation #temp FurnitureSizeRadius *= #temp FurnitureSizeRadius
scoreboard players operation #temp2 FurnitureSizeRadius *= #temp2 FurnitureSizeRadius
execute if score #temp2 PositionX <= #temp FurnitureSizeRadius run tag @s add hit
execute if score #temp2 PositionX <= #temp FurnitureSizeRadius unless score #temp2 PositionX <= #temp2 FurnitureSizeRadius run tag @s add hit_edge
scoreboard players reset #temp PositionX
scoreboard players reset #temp PositionY
scoreboard players reset #temp PositionZ
scoreboard players reset #temp FurnitureSizeRadius
scoreboard players reset #temp2 FurnitureSizeRadius
scoreboard players reset #temp2 PositionX
scoreboard players reset #temp2 PositionY
scoreboard players reset #temp2 PositionZ