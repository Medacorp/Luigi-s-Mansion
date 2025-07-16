scoreboard players operation #temp PositionX = @s PositionX
scoreboard players operation #temp PositionY = @s PositionY
execute store result score #temp Time run data get entity @s data.default_transformation[5] 10
execute if entity @s[tag=hanging_furniture] run scoreboard players operation #temp PositionY -= #temp Time
execute if entity @s[tag=standing_furniture] run scoreboard players operation #temp PositionY += #temp Time
scoreboard players operation #temp PositionZ = @s PositionZ
execute as @e[tag=furniture,tag=same_room,tag=!cloth] if score #temp PositionX = @s PositionX if score #temp PositionY = @s PositionY if score #temp PositionZ = @s PositionZ run tag @s add block_this_furniture
data modify entity @s data.blocked_furniture set value [I;]
data modify entity @s data.blocked_furniture set from entity @e[tag=block_this_furniture,limit=1] UUID
tag @e[tag=block_this_furniture,limit=1] add cloth_on_top
tag @e[tag=block_this_furniture,limit=1] remove block_this_furniture
scoreboard players reset #temp PositionX
scoreboard players reset #temp PositionY
scoreboard players reset #temp PositionZ
scoreboard players reset #temp Time
tag @s add blocked_furniture_boo_search