execute unless entity @s[scores={FurnitureRotDef=-180..}] store result score @s FurnitureRotDef run data get entity @s Rotation[0]

scoreboard players operation @s FurnitureSearch = @s FurnitureSpins
execute if score @s FurnitureSearch matches ..-1 run scoreboard players add @s FurnitureSearch 1
execute if score @s FurnitureSearch matches ..-1 run scoreboard players operation @s FurnitureSearch *= #-1 Constants

execute if entity @s[tag=!searched] if score @s FurnitureSearch >= @s FurnitureVacuum run function luigis_mansion:entities/furniture/tick/search_swirling
execute if entity @s[tag=searchable_by_hand,tag=search] run function luigis_mansion:entities/furniture/tick/search
tag @s remove search
execute if entity @s[tag=drop_loot] run function luigis_mansion:entities/furniture/tick/search_swirling
tag @s remove drop_loot