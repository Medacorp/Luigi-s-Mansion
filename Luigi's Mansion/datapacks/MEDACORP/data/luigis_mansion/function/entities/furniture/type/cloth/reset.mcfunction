data modify entity @s transformation set from entity @s data.default_transformation
tag @s remove transformed
scoreboard players set @s[scores={FurnitureSearch=..39}] FurnitureSearch 0
tag @s[scores={FurnitureSearch=..39}] remove pulled_front
tag @s[scores={FurnitureSearch=..39}] remove pulled_back
tag @s[scores={FurnitureSearch=..39}] remove pulled_left
tag @s[scores={FurnitureSearch=..39}] remove pulled_right
scoreboard players set @s FurnitureVacuum 0
scoreboard players reset @s SearcherID