scoreboard players operation #temp PositionX = @s PositionX
scoreboard players operation #temp PositionY = @s PositionY
scoreboard players operation #temp2 PositionY = @s PositionY
execute if entity @s[tag=hanging_furniture] run scoreboard players operation #temp PositionY -= @s FurnitureSizeUp
execute if entity @s[tag=standing_furniture] run scoreboard players operation #temp2 PositionY += @s FurnitureSizeUp
scoreboard players operation #temp PositionZ = @s PositionZ
execute as @e[tag=furniture,tag=same_room,tag=!cloth,tag=can_hide_boo] if score #temp PositionX = @s PositionX if score #temp PositionZ = @s PositionZ run function luigis_mansion:entities/furniture/type/cloth/block_furniture_search
execute at @e[tag=block_this_furniture,limit=1] if entity @e[tag=block_this_furniture,distance=0.1..,limit=1] run tag @e[tag=block_this_furniture] remove block_this_furniture
data modify entity @s data.blocked_furniture set value [I;]
data modify entity @s data.blocked_furniture set from entity @e[tag=block_this_furniture,limit=1] UUID
tag @e[tag=block_this_furniture,limit=1] add cloth_on_top
tag @e[tag=block_this_furniture,limit=1] remove block_this_furniture
scoreboard players reset #temp FurnitureSize
scoreboard players reset #temp PositionX
scoreboard players reset #temp PositionY
scoreboard players reset #temp2 PositionY
scoreboard players reset #temp3 PositionY
scoreboard players reset #temp4 PositionY
scoreboard players reset #temp PositionZ
tag @s add blocked_furniture_boo_search