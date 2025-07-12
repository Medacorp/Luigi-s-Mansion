execute if entity @s[tag=in_vacuum] run function luigis_mansion:entities/furniture/type/poster/vacuum
scoreboard players operation @s FurnitureSearch += #temp FurnitureSearch
scoreboard players reset #temp FurnitureSearch
execute if score @s FurnitureSearch matches 40.. run scoreboard players operation @s SearcherID = @e[tag=same_room,tag=vacuuming_me,sort=nearest,limit=1] ID
execute if score @s FurnitureSearch matches 40.. run function luigis_mansion:entities/furniture/search/generic
tag @s[scores={FurnitureSearch=10..},tag=!in_vacuum] add open

execute if entity @s[tag=!in_vacuum,tag=transformed] run function luigis_mansion:entities/furniture/type/poster/reset

execute if entity @s[tag=open] run function luigis_mansion:entities/furniture/type/poster/vacuum_up