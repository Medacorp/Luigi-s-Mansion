scoreboard players set @s FurnitureSize 1
scoreboard players operation @s[scores={FurnitureSizeRadius=1..}] FurnitureSize *= @s FurnitureSizeRadius
scoreboard players operation @s[scores={FurnitureSizeRadius=1..}] FurnitureSize *= @s FurnitureSizeRadius
scoreboard players operation @s[scores={FurnitureSizeRadius=1..}] FurnitureSize *= @s FurnitureSizeRadius
scoreboard players operation @s[scores={FurnitureSizeRadius=1..}] FurnitureSize /= #4 Constants
scoreboard players operation @s[scores={FurnitureSizeWidth=1..}] FurnitureSize *= @s FurnitureSizeWidth
scoreboard players operation @s[scores={FurnitureSizeWidth=1..}] FurnitureSize *= @s FurnitureSizeWidth
scoreboard players operation @s[scores={FurnitureSizeHeight=1..}] FurnitureSize *= @s FurnitureSizeHeight
scoreboard players operation @s[scores={FurnitureSizeLeft=1..}] FurnitureSize *= @s FurnitureSizeLeft
scoreboard players operation @s[scores={FurnitureSizeUp=1..}] FurnitureSize *= @s FurnitureSizeUp
scoreboard players operation @s[scores={FurnitureSizeForward=1..}] FurnitureSize *= @s FurnitureSizeForward
function luigis_mansion:items/interact/target_furniture/root
execute if entity @s[tag=hit] run tag @e[tag=interact,tag=manual,distance=..0.2,limit=1] add can_interact
execute if entity @s[tag=hit,tag=!searchable_by_interact] run scoreboard players operation @e[tag=interact,tag=manual,tag=!can_search,distance=..0.2,limit=1] FurnitureSize < @s FurnitureSize
execute if entity @s[tag=hit,tag=searchable_by_interact] run scoreboard players operation @e[tag=interact,tag=manual,tag=!can_search,distance=..0.2,limit=1] FurnitureSize = @s FurnitureSize
execute if entity @s[tag=hit,tag=searchable_by_interact] run scoreboard players operation @e[tag=interact,tag=manual,tag=can_search,distance=..0.2,limit=1] FurnitureSize < @s FurnitureSize
execute if entity @s[tag=hit,tag=searchable_by_interact] run tag @e[tag=interact,tag=manual,distance=..0.2,limit=1] add can_search
execute if entity @s[tag=hit] if score @s FurnitureSize = @e[tag=interact,tag=manual,distance=..0.2,limit=1] FurnitureSize run data modify entity @e[tag=interact,tag=manual,distance=..0.2,limit=1] data.search_furniture set from entity @s UUID
execute if entity @s[tag=hit_edge] if score @s FurnitureSize = @e[tag=interact,tag=manual,distance=..0.2,limit=1] FurnitureSize run tag @e[tag=interact,tag=manual,distance=..0.2,limit=1] add low_priority
execute if entity @s[tag=hit,tag=!hit_edge] if score @s FurnitureSize = @e[tag=interact,tag=manual,distance=..0.2,limit=1] FurnitureSize run tag @e[tag=interact,tag=manual,distance=..0.2,limit=1] remove low_priority
tag @s remove hit
tag @s remove hit_edge