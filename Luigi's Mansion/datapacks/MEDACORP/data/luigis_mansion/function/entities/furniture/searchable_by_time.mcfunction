scoreboard players add @s FurnitureTime 1
scoreboard players add @s[nbt={data:{furniture_type:"swinging"}}] FurnitureTime 4
execute if score @s FurnitureSearch = @s FurnitureTime run scoreboard players operation @s SearcherID = @e[tag=same_room,tag=luigi,sort=nearest,limit=1] ID
execute if score @s FurnitureSearch = @s FurnitureTime run function luigis_mansion:entities/furniture/search/generic
execute if score @s FurnitureSearch = @s FurnitureTime run tag @s remove searchable_by_time