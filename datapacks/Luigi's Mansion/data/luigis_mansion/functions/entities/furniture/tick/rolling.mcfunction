execute if entity @s[tag=!saved_default_orientation] run function luigis_mansion:entities/furniture/tick/save_default_orientation
execute unless entity @s[tag=!shake,tag=!long_shake] run function luigis_mansion:entities/furniture/tick/shake

execute unless entity @s[scores={FurnitureSearch=0..}] run scoreboard players add @s FurnitureSearch 0
scoreboard players remove @s[tag=!in_vacuum,scores={FurnitureSearch=1..}] FurnitureSearch 1
execute if score @s[tag=in_vacuum,tag=searchable_by_vacuum] FurnitureSearch <= @s FurnitureVacuum run scoreboard players add @s FurnitureSearch 2
execute if entity @s[scores={FurnitureSearch=1..}] run function luigis_mansion:entities/furniture/tick/roll
execute if entity @s[scores={FurnitureSearch=0},tag=!shake,tag=!long_shake,tag=was_shaking] run function luigis_mansion:entities/furniture/tick/revert_to_default_orientation
tag @s remove in_vacuum

execute if score @s[tag=!searched,tag=searchable_by_vacuum] FurnitureSearch >= @s FurnitureVacuum run function luigis_mansion:entities/furniture/tick/search_roll
execute if score @s[tag=searched,tag=searchable_by_vacuum] FurnitureSearch < @s FurnitureVacuum run tag @s remove searched
execute if entity @s[tag=searchable_by_hand,tag=search] run function luigis_mansion:entities/furniture/tick/search
tag @s[tag=!searchable_by_hand,tag=search] add open
tag @s remove search
execute if entity @s[tag=drop_loot] run function luigis_mansion:entities/furniture/tick/search
tag @s remove drop_loot