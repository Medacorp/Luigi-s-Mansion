data modify entity @s data.puller set value 0
execute if entity @s[scores={SearcherID=-2147483648..}] store result entity @s data.puller int 1 run scoreboard players get @s SearcherID
execute if entity @s[tag=in_vacuum] run function luigis_mansion:entities/furniture/type/poster/vacuum with entity @s data
scoreboard players operation @s FurnitureSearch += #temp FurnitureSearch
scoreboard players reset #temp FurnitureSearch
execute if score @s FurnitureSearch matches 40.. run function luigis_mansion:entities/furniture/search/generic
tag @s[scores={FurnitureSearch=10..},tag=!in_vacuum] add open

execute if entity @s[tag=!in_vacuum,tag=transformed] run function luigis_mansion:entities/furniture/type/poster/reset

execute if entity @s[tag=open] run function luigis_mansion:entities/furniture/type/poster/vacuum_up with entity @s data
tag @s[tag=!in_vacuum,tag=!transformed] add idle_furniture