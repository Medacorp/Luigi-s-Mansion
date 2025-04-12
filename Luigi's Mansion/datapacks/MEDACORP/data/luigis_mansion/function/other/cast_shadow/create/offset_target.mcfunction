scoreboard players operation #temp2 PositionY = #temp PositionY
scoreboard players operation #temp2 PositionY += @s EntityYOffset
execute if entity @s[scores={EntitySizeWidth=1..}] run scoreboard players operation #temp EntitySizeHeight += @s EntitySizeHeight
execute if entity @s[scores={EntitySizeWidth=1..}] run scoreboard players operation #temp EntitySizeHeight /= #2 Constants
execute if entity @s[scores={EntitySizeWidth=1..}] run scoreboard players operation #temp2 PositionY += #temp EntitySizeHeight
execute if entity @s[scores={EntitySizeRadius=1..}] run scoreboard players operation #temp2 PositionY += @s EntitySizeRadius
execute store result entity @s Pos[1] double 0.1 run scoreboard players get #temp2 PositionY
scoreboard players reset #temp2 PositionY
scoreboard players reset #temp EntitySizeHeight