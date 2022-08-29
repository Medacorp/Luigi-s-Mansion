execute if entity @s[tag=!saved_default_orientation] run function luigis_mansion:entities/furniture/tick/save_default_orientation
execute unless entity @s[tag=!in_vacuum,tag=!shake,tag=!long_shake] run function luigis_mansion:entities/furniture/tick/shake
execute if entity @s[tag=!in_vacuum,tag=!shake,tag=!long_shake,tag=was_shaking] run function luigis_mansion:entities/furniture/tick/revert_to_default_orientation

scoreboard players set @s[tag=!in_vacuum,tag=searchable_by_vacuum] FurnitureSearch 0
scoreboard players add @s[tag=in_vacuum,tag=searchable_by_vacuum] FurnitureSearch 1
tag @s remove in_vacuum
scoreboard players set @s[tag=!in_dust,tag=searchable_by_dust] FurnitureSearch 0
scoreboard players add @s[tag=in_dust,tag=searchable_by_dust] FurnitureSearch 1
tag @s remove in_dust
scoreboard players set @s[tag=!in_fire,tag=searchable_by_fire] FurnitureSearch 0
scoreboard players add @s[tag=in_fire,tag=searchable_by_fire] FurnitureSearch 1
tag @s remove in_fire
scoreboard players set @s[tag=!in_water,tag=searchable_by_water] FurnitureSearch 0
scoreboard players add @s[tag=in_water,tag=searchable_by_water] FurnitureSearch 1
tag @s remove in_water
scoreboard players set @s[tag=!in_ice,tag=searchable_by_ice] FurnitureSearch 0
scoreboard players add @s[tag=in_ice,tag=searchable_by_ice] FurnitureSearch 1
tag @s remove in_ice

execute if score @s[tag=searchable_by_vacuum,tag=!searchable_by_dust,tag=!searchable_by_fire,tag=!searchable_by_water,tag=!searchable_by_ice] FurnitureSearch = @s FurnitureVacuum run function luigis_mansion:entities/furniture/tick/search
execute unless entity @s[tag=!searchable_by_dust,tag=!searchable_by_fire,tag=!searchable_by_water,tag=!searchable_by_ice] if score @s[tag=searchable_by_vacuum,tag=!open] FurnitureSearch = @s FurnitureVacuum run tag @s add open
execute unless entity @s[tag=searchable_by_vacuum,tag=!open] if score @s[tag=searchable_by_dust] FurnitureSearch = @s FurnitureDust run function luigis_mansion:entities/furniture/tick/search
execute unless entity @s[tag=searchable_by_vacuum,tag=!open] if score @s[tag=searchable_by_fire] FurnitureSearch = @s FurnitureFire run function luigis_mansion:entities/furniture/tick/search
execute unless entity @s[tag=searchable_by_vacuum,tag=!open] if score @s[tag=searchable_by_water] FurnitureSearch = @s FurnitureWater run function luigis_mansion:entities/furniture/tick/search
execute unless entity @s[tag=searchable_by_vacuum,tag=!open] if score @s[tag=searchable_by_ice] FurnitureSearch = @s FurnitureIce run function luigis_mansion:entities/furniture/tick/search
execute if entity @s[tag=searchable_by_hand,tag=search] run function luigis_mansion:entities/furniture/tick/search
tag @s[tag=!searchable_by_hand,tag=search] add open
tag @s remove search
execute if entity @s[tag=drop_loot] run function luigis_mansion:entities/furniture/tick/search
tag @s remove drop_loot

execute if entity @s[tag=open] run function #luigis_mansion:entities/furniture/open