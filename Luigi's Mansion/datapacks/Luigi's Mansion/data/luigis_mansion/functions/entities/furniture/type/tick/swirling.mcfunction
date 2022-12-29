execute unless entity @s[scores={FurnitureRotDef=-180..}] store result score @s FurnitureRotDef run data get entity @s Rotation[0]

scoreboard players operation @s FurnitureVacuum = @s FurnitureSpins
execute if score @s FurnitureVacuum matches ..-1 run scoreboard players add @s FurnitureVacuum 1
execute if score @s FurnitureVacuum matches ..-1 run scoreboard players operation @s FurnitureVacuum *= #-1 Constants

execute if entity @s[tag=!searched] if score @s FurnitureVacuum >= @s FurnitureSearch run function luigis_mansion:entities/furniture/search/swirl
execute if entity @s[tag=searchable_by_hand,tag=search] run function luigis_mansion:entities/furniture/search/generic
tag @s remove search
execute if entity @s[tag=drop_loot] run function luigis_mansion:entities/furniture/search/swirl
tag @s remove drop_loot