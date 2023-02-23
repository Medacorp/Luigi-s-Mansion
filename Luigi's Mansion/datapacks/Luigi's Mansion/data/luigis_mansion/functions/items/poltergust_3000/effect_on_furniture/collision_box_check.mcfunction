scoreboard players operation #temp PositionX = @s PositionX
scoreboard players operation #temp PositionY = @s PositionY
scoreboard players operation #temp PositionZ = @s PositionZ
scoreboard players operation #temp2 PositionX = #temp PositionX
scoreboard players operation #temp2 PositionY = #temp PositionY
scoreboard players operation #temp2 PositionZ = #temp PositionZ
scoreboard players operation #temp FurnitureSizeWidth = @s FurnitureSizeWidth
scoreboard players operation #temp FurnitureSizeHeight = @s FurnitureSizeHeight
scoreboard players operation #temp FurnitureSizeWidth /= #2 Constants
execute if entity @s[tag=!hanging_furniture,tag=!standing_furniture] run scoreboard players operation #temp FurnitureSizeHeight /= #2 Constants
scoreboard players operation #temp PositionX -= #temp FurnitureSizeWidth
execute if entity @s[tag=!standing_furniture] run scoreboard players operation #temp PositionY -= #temp FurnitureSizeHeight
scoreboard players operation #temp PositionZ -= #temp FurnitureSizeWidth
scoreboard players operation #temp2 PositionX += #temp FurnitureSizeWidth
execute if entity @s[tag=!hanging_furniture] run scoreboard players operation #temp2 PositionY += #temp FurnitureSizeHeight
scoreboard players operation #temp2 PositionZ += #temp FurnitureSizeWidth

scoreboard players operation #temp3 PositionX = #interact PositionX
scoreboard players operation #temp3 PositionX < #temp2 PositionX
scoreboard players operation #temp3 PositionX > #temp PositionX
scoreboard players operation #temp3 PositionY = #interact PositionY
scoreboard players operation #temp3 PositionY < #temp2 PositionY
scoreboard players operation #temp3 PositionY > #temp PositionY
scoreboard players operation #temp3 PositionZ = #interact PositionZ
scoreboard players operation #temp3 PositionZ < #temp2 PositionZ
scoreboard players operation #temp3 PositionZ > #temp PositionZ

scoreboard players operation #temp PositionX = #interact PositionX
scoreboard players operation #temp PositionY = #interact PositionY
scoreboard players operation #temp PositionZ = #interact PositionZ
scoreboard players operation #temp PositionX -= #temp3 PositionX
scoreboard players operation #temp PositionY -= #temp3 PositionY
scoreboard players operation #temp PositionZ -= #temp3 PositionZ
scoreboard players operation #temp PositionX *= #temp PositionX
scoreboard players operation #temp PositionY *= #temp PositionY
scoreboard players operation #temp PositionZ *= #temp PositionZ
scoreboard players operation #temp PositionX += #temp PositionY
scoreboard players operation #temp PositionX += #temp PositionZ
execute if score #temp PositionX matches ..25 run tag @s add hit_by_poltergust

scoreboard players reset #temp PositionX
scoreboard players reset #temp PositionY
scoreboard players reset #temp PositionZ
scoreboard players reset #temp FurnitureSizeWidth
scoreboard players reset #temp FurnitureSizeHeight
scoreboard players reset #temp2 PositionX
scoreboard players reset #temp2 PositionY
scoreboard players reset #temp2 PositionZ
scoreboard players reset #temp3 PositionX
scoreboard players reset #temp3 PositionY
scoreboard players reset #temp3 PositionZ