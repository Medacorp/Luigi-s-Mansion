scoreboard players operation #temp PositionX = @s PositionX
scoreboard players operation #temp PositionY = @s PositionY
scoreboard players operation #temp PositionZ = @s PositionZ
scoreboard players operation #temp EntitySizeRadius = @s EntitySizeRadius
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
scoreboard players add #temp EntitySizeRadius 5
scoreboard players operation #temp EntitySizeRadius *= #temp EntitySizeRadius
execute if score #temp2 PositionX <= #temp EntitySizeRadius run tag @s add hit_by_poltergust
scoreboard players reset #temp PositionX
scoreboard players reset #temp PositionY
scoreboard players reset #temp PositionZ
scoreboard players reset #temp EntitySizeRadius
scoreboard players reset #temp2 PositionX
scoreboard players reset #temp2 PositionY
scoreboard players reset #temp2 PositionZ