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
execute if score #interact PositionX >= #temp PositionX if score #interact PositionX <= #temp2 PositionX if score #interact PositionY >= #temp PositionY if score #interact PositionY <= #temp2 PositionY if score #interact PositionZ >= #temp PositionZ if score #interact PositionZ <= #temp2 PositionZ run tag @s add scanned
scoreboard players reset #temp PositionX
scoreboard players reset #temp PositionY
scoreboard players reset #temp PositionZ
scoreboard players reset #temp EntitySizeWidth
scoreboard players reset #temp EntitySizeHeight
scoreboard players reset #temp2 PositionX
scoreboard players reset #temp2 PositionY
scoreboard players reset #temp2 PositionZ