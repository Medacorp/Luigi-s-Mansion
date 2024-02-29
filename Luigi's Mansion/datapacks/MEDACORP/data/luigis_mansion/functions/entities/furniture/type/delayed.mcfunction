execute if entity @s[tag=!saved_default_orientation] run function luigis_mansion:entities/furniture/save_default_orientation
execute unless entity @s[tag=!shake,tag=!long_shake] run function luigis_mansion:entities/furniture/shake
execute if entity @s[tag=!shake,tag=!long_shake,tag=was_shaking,tag=!rock] run function luigis_mansion:entities/furniture/revert_to_default_orientation

scoreboard players operation @s FurnitureShake = @s FurnitureSearch
scoreboard players remove @s FurnitureShake 20

execute if score @s FurnitureTime >= @s FurnitureShake unless score @s FurnitureTime >= @s FurnitureSearch run tag @s[tag=!open] add shake
execute if score @s FurnitureSearch >= @s FurnitureTime run scoreboard players add @s[tag=searchable_by_time] FurnitureTime 1
execute unless entity @s[scores={FurnitureTime=1..}] run scoreboard players add @s[tag=searchable_by_time] FurnitureTime 1
execute if score @s FurnitureVacuum >= @s FurnitureShake unless score @s FurnitureVacuum >= @s FurnitureSearch run tag @s add shake
execute if score @s FurnitureVacuum >= @s FurnitureShake run scoreboard players add @s[tag=searchable_by_vacuum] FurnitureVacuum 1
execute if score @s FurnitureVacuum >= @s FurnitureSearch run scoreboard players set @s[tag=!in_vacuum,tag=searchable_by_vacuum] FurnitureVacuum 0
execute unless score @s FurnitureVacuum >= @s FurnitureShake run scoreboard players set @s[tag=!in_vacuum,tag=searchable_by_vacuum] FurnitureVacuum 0
execute unless score @s FurnitureVacuum >= @s FurnitureShake run scoreboard players add @s[tag=in_vacuum,tag=searchable_by_vacuum] FurnitureVacuum 1
execute if score @s FurnitureDust >= @s FurnitureShake unless score @s FurnitureDust >= @s FurnitureSearch run tag @s add shake
execute if score @s FurnitureDust >= @s FurnitureShake run scoreboard players add @s[tag=searchable_by_dust] FurnitureDust 1
execute if score @s FurnitureDust >= @s FurnitureSearch run scoreboard players set @s[tag=!in_dust,tag=searchable_by_dust] FurnitureDust 0
execute unless score @s FurnitureDust >= @s FurnitureShake run scoreboard players set @s[tag=!in_dust,tag=searchable_by_dust] FurnitureDust 0
execute unless score @s FurnitureDust >= @s FurnitureShake run scoreboard players add @s[tag=in_dust,tag=searchable_by_dust] FurnitureDust 1
execute if score @s FurnitureFire >= @s FurnitureShake unless score @s FurnitureFire >= @s FurnitureSearch run tag @s add shake
execute if score @s FurnitureFire >= @s FurnitureShake run scoreboard players add @s[tag=searchable_by_fire] FurnitureFire 1
execute if score @s FurnitureFire >= @s FurnitureSearch run scoreboard players set @s[tag=!in_fire,tag=searchable_by_fire] FurnitureFire 0
execute unless score @s FurnitureFire >= @s FurnitureShake run scoreboard players set @s[tag=!in_fire,tag=searchable_by_fire] FurnitureFire 0
execute unless score @s FurnitureFire >= @s FurnitureShake run scoreboard players add @s[tag=in_fire,tag=searchable_by_fire] FurnitureFire 1
execute if score @s FurnitureWater >= @s FurnitureShake unless score @s FurnitureWater >= @s FurnitureSearch run tag @s add shake
execute if score @s FurnitureWater >= @s FurnitureShake run scoreboard players add @s[tag=searchable_by_water] FurnitureWater 1
execute if score @s FurnitureWater >= @s FurnitureSearch run scoreboard players set @s[tag=!in_water,tag=searchable_by_water] FurnitureWater 0
execute unless score @s FurnitureWater >= @s FurnitureShake run scoreboard players set @s[tag=!in_water,tag=searchable_by_water] FurnitureWater 0
execute unless score @s FurnitureWater >= @s FurnitureShake run scoreboard players add @s[tag=in_water,tag=searchable_by_water] FurnitureWater 1
execute if score @s FurnitureIce >= @s FurnitureShake unless score @s FurnitureIce >= @s FurnitureSearch run tag @s add shake
execute if score @s FurnitureIce >= @s FurnitureShake run scoreboard players add @s[tag=searchable_by_ice] FurnitureIce 1
execute if score @s FurnitureIce >= @s FurnitureSearch run scoreboard players set @s[tag=!in_ice,tag=searchable_by_ice] FurnitureIce 0
execute unless score @s FurnitureIce >= @s FurnitureShake run scoreboard players set @s[tag=!in_ice,tag=searchable_by_ice] FurnitureIce 0
execute unless score @s FurnitureIce >= @s FurnitureShake run scoreboard players add @s[tag=in_ice,tag=searchable_by_ice] FurnitureIce 1

execute if score @s[tag=searchable_by_vacuum,tag=!searchable_by_dust,tag=!searchable_by_fire,tag=!searchable_by_water,tag=!searchable_by_ice] FurnitureSearch = @s FurnitureVacuum run function luigis_mansion:entities/furniture/search/generic
execute unless entity @s[tag=!searchable_by_dust,tag=!searchable_by_fire,tag=!searchable_by_water,tag=!searchable_by_ice] if score @s[tag=searchable_by_vacuum,tag=!open] FurnitureSearch = @s FurnitureVacuum run tag @s add open
execute unless entity @s[tag=searchable_by_vacuum,tag=!open] if score @s[tag=searchable_by_dust] FurnitureSearch = @s FurnitureDust run function luigis_mansion:entities/furniture/search/generic
execute unless entity @s[tag=searchable_by_vacuum,tag=!open] if score @s[tag=searchable_by_fire] FurnitureSearch = @s FurnitureFire run function luigis_mansion:entities/furniture/search/generic
execute unless entity @s[tag=searchable_by_vacuum,tag=!open] if score @s[tag=searchable_by_water] FurnitureSearch = @s FurnitureWater run function luigis_mansion:entities/furniture/search/generic
execute unless entity @s[tag=searchable_by_vacuum,tag=!open] if score @s[tag=searchable_by_ice] FurnitureSearch = @s FurnitureIce run function luigis_mansion:entities/furniture/search/generic
execute if score @s[tag=searchable_by_time] FurnitureSearch = @s FurnitureTime run function luigis_mansion:entities/furniture/search/generic
execute if entity @s[tag=searchable_by_interact,tag=search] run function luigis_mansion:entities/furniture/search/generic
tag @s[tag=!searchable_by_interact,tag=search] add open
execute if entity @s[tag=drop_loot] run function luigis_mansion:entities/furniture/search/generic

execute if entity @s[tag=sparkles,tag=!open] run function luigis_mansion:entities/furniture/spawn/sparkles