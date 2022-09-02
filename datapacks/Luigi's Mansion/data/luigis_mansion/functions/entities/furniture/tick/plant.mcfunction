execute if entity @s[tag=!saved_default_orientation] run function luigis_mansion:entities/furniture/tick/save_default_orientation
execute unless entity @s[tag=!in_vacuum,tag=!shake,tag=!long_shake] run function luigis_mansion:entities/furniture/tick/shake
execute if entity @s[tag=!in_vacuum,tag=!shake,tag=!long_shake] if entity @s[scores={FurnitureSearch=20..39}] run function luigis_mansion:entities/furniture/tick/shake
execute if entity @s[tag=!in_vacuum,tag=!shake,tag=!long_shake,tag=was_shaking] unless entity @s[scores={FurnitureSearch=20..39}] run function luigis_mansion:entities/furniture/tick/revert_to_default_orientation
tag @s remove in_vacuum

execute unless entity @s[scores={FurnitureSearch=20..39}] run scoreboard players set @s[tag=!in_water,tag=searchable_by_water] FurnitureSearch 0
scoreboard players add @s[scores={FurnitureSearch=20..39},tag=searchable_by_water] FurnitureSearch 1
execute unless entity @s[scores={FurnitureSearch=20..39}] run scoreboard players add @s[tag=in_water,tag=searchable_by_water] FurnitureSearch 1
tag @s remove in_water

execute if entity @s[scores={FurnitureSearch=40},tag=searchable_by_water] run function luigis_mansion:entities/furniture/tick/search
execute if entity @s[tag=searchable_by_hand,tag=search] run function luigis_mansion:entities/furniture/tick/search
tag @s[tag=!searchable_by_hand,tag=search] add open
tag @s remove search
execute if entity @s[tag=drop_loot] run function luigis_mansion:entities/furniture/tick/search
tag @s remove drop_loot