scoreboard players operation #temp PositionX = @s PositionX
scoreboard players operation #temp PositionY = @s PositionY
scoreboard players operation #temp EntityYOffset = @s EntityYOffset
scoreboard players operation #temp EntityYOffset /= #2 Constants
scoreboard players operation #temp PositionY -= #temp EntityYOffset
scoreboard players reset #temp EntityYOffset
scoreboard players operation #temp PositionZ = @s PositionZ