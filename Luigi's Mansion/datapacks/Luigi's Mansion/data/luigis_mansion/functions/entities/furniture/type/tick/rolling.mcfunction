execute if entity @s[tag=!saved_default_orientation] run function luigis_mansion:entities/furniture/save_default_orientation
execute unless entity @s[tag=!shake,tag=!long_shake] run function luigis_mansion:entities/furniture/shake

execute if score @s FurnitureSearch >= @s FurnitureTime run scoreboard players add @s[tag=searchable_by_time] FurnitureTime 1
execute unless entity @s[scores={FurnitureTime=1..}] run scoreboard players add @s[tag=searchable_by_time] FurnitureTime 1
execute unless entity @s[scores={FurnitureVacuum=0..}] run scoreboard players add @s FurnitureVacuum 0
scoreboard players set @s[tag=!in_vacuum,tag=!in_dust,tag=!in_fire,tag=!in_water,tag=!in_ice,scores={FurnitureVacuum=42..}] FurnitureVacuum 42
scoreboard players remove @s[tag=!in_vacuum,tag=!in_dust,tag=!in_fire,tag=!in_water,tag=!in_ice,scores={FurnitureVacuum=1..}] FurnitureVacuum 1
execute unless entity @s[tag=!in_vacuum,tag=!in_dust,tag=!in_fire,tag=!in_water,tag=!in_ice] if score @s FurnitureVacuum <= @s FurnitureVacuum run scoreboard players add @s FurnitureVacuum 2
execute if entity @s[scores={FurnitureVacuum=1..}] run function luigis_mansion:entities/furniture/type/tick/rolling/roll
execute if entity @s[scores={FurnitureVacuum=0},tag=!shake,tag=!long_shake,tag=was_shaking,tag=!rock] run function luigis_mansion:entities/furniture/revert_to_default_orientation

execute if score @s[tag=!searched] FurnitureVacuum >= @s FurnitureSearch run function luigis_mansion:entities/furniture/search/roll
execute if score @s[tag=searched] FurnitureVacuum < @s FurnitureSearch run tag @s remove searched
execute if score @s[tag=searchable_by_time] FurnitureSearch = @s FurnitureTime run function luigis_mansion:entities/furniture/search/generic
execute if entity @s[tag=searchable_by_interact,tag=search] run function luigis_mansion:entities/furniture/search/generic
tag @s[tag=!searchable_by_interact,tag=search] add open
execute if entity @s[tag=drop_loot] run function luigis_mansion:entities/furniture/search/generic

execute if entity @s[tag=open,scores={ActionTime=0..}] run function #luigis_mansion:entities/furniture/open

execute if entity @s[tag=sparkles,tag=!open] run function luigis_mansion:entities/furniture/spawn/sparkles