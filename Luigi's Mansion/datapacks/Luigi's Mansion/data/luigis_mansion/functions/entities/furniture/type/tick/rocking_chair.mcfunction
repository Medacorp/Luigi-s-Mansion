execute positioned ~ ~1.25 ~ if entity @e[tag=ghost,distance=..1,scores={StunTime=0}] run tag @s add rock
execute positioned ~ ~1.85 ~ if entity @e[tag=portrait_ghost,distance=..1,scores={StunTime=0}] run tag @s add rock
execute if entity @s[tag=!saved_default_orientation] run function luigis_mansion:entities/furniture/save_default_orientation
execute if entity @s[tag=rock] run function luigis_mansion:animations/furniture/rocking_chair
execute unless entity @s[tag=!in_vacuum,tag=!shake,tag=!long_shake] run function luigis_mansion:entities/furniture/shake
execute if entity @s[tag=!in_vacuum,tag=!shake,tag=!long_shake,tag=!rock] unless entity @s[tag=!was_shaking,tag=!was_rocking] run function luigis_mansion:entities/furniture/revert_to_default_orientation
tag @s remove rock

scoreboard players set @s[tag=!in_vacuum,tag=searchable_by_vacuum] FurnitureVacuum 0
scoreboard players add @s[tag=in_vacuum,tag=searchable_by_vacuum] FurnitureVacuum 1
tag @s remove in_vacuum
scoreboard players set @s[tag=!in_dust,tag=searchable_by_dust] FurnitureDust 0
scoreboard players add @s[tag=in_dust,tag=searchable_by_dust] FurnitureDust 1
tag @s remove in_dust
scoreboard players set @s[tag=!in_fire,tag=searchable_by_fire] FurnitureFire 0
scoreboard players add @s[tag=in_fire,tag=searchable_by_fire] FurnitureFire 1
tag @s remove in_fire
scoreboard players set @s[tag=!in_water,tag=searchable_by_water] FurnitureWater 0
scoreboard players add @s[tag=in_water,tag=searchable_by_water] FurnitureWater 1
tag @s remove in_water
scoreboard players set @s[tag=!in_ice,tag=searchable_by_ice] FurnitureIce 0
scoreboard players add @s[tag=in_ice,tag=searchable_by_ice] FurnitureIce 1
tag @s remove in_ice

execute if score @s[tag=searchable_by_vacuum,tag=!searchable_by_dust,tag=!searchable_by_fire,tag=!searchable_by_water,tag=!searchable_by_ice] FurnitureSearch = @s FurnitureVacuum run function luigis_mansion:entities/furniture/search/generic
execute unless entity @s[tag=!searchable_by_dust,tag=!searchable_by_fire,tag=!searchable_by_water,tag=!searchable_by_ice] if score @s[tag=searchable_by_vacuum,tag=!open] FurnitureSearch = @s FurnitureVacuum run tag @s add open
execute unless entity @s[tag=searchable_by_vacuum,tag=!open] if score @s[tag=searchable_by_dust] FurnitureSearch = @s FurnitureDust run function luigis_mansion:entities/furniture/search/generic
execute unless entity @s[tag=searchable_by_vacuum,tag=!open] if score @s[tag=searchable_by_fire] FurnitureSearch = @s FurnitureFire run function luigis_mansion:entities/furniture/search/generic
execute unless entity @s[tag=searchable_by_vacuum,tag=!open] if score @s[tag=searchable_by_water] FurnitureSearch = @s FurnitureWater run function luigis_mansion:entities/furniture/search/generic
execute unless entity @s[tag=searchable_by_vacuum,tag=!open] if score @s[tag=searchable_by_ice] FurnitureSearch = @s FurnitureIce run function luigis_mansion:entities/furniture/search/generic
execute if entity @s[tag=searchable_by_hand,tag=search] run function luigis_mansion:entities/furniture/search/generic
tag @s[tag=!searchable_by_hand,tag=search] add open
tag @s remove search
execute if entity @s[tag=drop_loot] run function luigis_mansion:entities/furniture/search/generic
tag @s remove drop_loot

execute if entity @s[tag=open,scores={ActionTime=0..}] run function #luigis_mansion:entities/furniture/open