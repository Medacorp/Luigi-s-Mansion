scoreboard players add @s FurnitureTime 1
scoreboard players add @s[nbt={ArmorItems:[{components:{"minecraft:custom_data":{furniture_type:"swinging"}}}]}] FurnitureTime 4
execute if score @s FurnitureSearch = @s FurnitureTime run scoreboard players operation @s SearcherID = @p[tag=same_room] ID
execute if score @s FurnitureSearch = @s FurnitureTime run function luigis_mansion:entities/furniture/search/generic
execute if score @s FurnitureSearch = @s FurnitureTime run tag @s remove searchable_by_time