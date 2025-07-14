scoreboard players set @s[tag=!in_vacuum,tag=searchable_by_vacuum] FurnitureVacuum 0
scoreboard players add @s[tag=in_vacuum,tag=searchable_by_vacuum] FurnitureVacuum 1
scoreboard players set @s[tag=!in_dust,tag=searchable_by_dust] FurnitureDust 0
scoreboard players add @s[tag=in_dust,tag=searchable_by_dust] FurnitureDust 1
scoreboard players set @s[tag=!in_fire,tag=searchable_by_fire] FurnitureFire 0
scoreboard players add @s[tag=in_fire,tag=searchable_by_fire] FurnitureFire 1
scoreboard players set @s[tag=!in_water,tag=searchable_by_water] FurnitureWater 0
scoreboard players add @s[tag=in_water,tag=searchable_by_water] FurnitureWater 1
scoreboard players set @s[tag=!in_ice,tag=searchable_by_ice] FurnitureIce 0
scoreboard players add @s[tag=in_ice,tag=searchable_by_ice] FurnitureIce 1

execute if score @s[tag=searchable_by_vacuum,tag=!searchable_by_dust,tag=!searchable_by_fire,tag=!searchable_by_water,tag=!searchable_by_ice] FurnitureSearch = @s FurnitureVacuum run scoreboard players operation @s SearcherID = @e[tag=same_room,tag=vacuuming_me,sort=nearest,limit=1] ID
execute if score @s[tag=searchable_by_vacuum,tag=!searchable_by_dust,tag=!searchable_by_fire,tag=!searchable_by_water,tag=!searchable_by_ice] FurnitureSearch = @s FurnitureVacuum run function luigis_mansion:entities/furniture/search/generic
execute unless entity @s[tag=!searchable_by_dust,tag=!searchable_by_fire,tag=!searchable_by_water,tag=!searchable_by_ice] if score @s[tag=searchable_by_vacuum,tag=!open] FurnitureSearch = @s FurnitureVacuum run tag @s add open
execute unless entity @s[tag=searchable_by_vacuum,tag=!open] if score @s[tag=searchable_by_dust] FurnitureSearch = @s FurnitureDust run scoreboard players operation @s SearcherID = @e[tag=same_room,tag=dusting_me,sort=nearest,limit=1] ID
execute unless entity @s[tag=searchable_by_vacuum,tag=!open] if score @s[tag=searchable_by_dust] FurnitureSearch = @s FurnitureDust run function luigis_mansion:entities/furniture/search/generic
execute unless entity @s[tag=searchable_by_vacuum,tag=!open] if score @s[tag=searchable_by_fire] FurnitureSearch = @s FurnitureFire run scoreboard players operation @s SearcherID = @e[tag=same_room,tag=burning_me,sort=nearest,limit=1] ID
execute unless entity @s[tag=searchable_by_vacuum,tag=!open] if score @s[tag=searchable_by_fire] FurnitureSearch = @s FurnitureFire run function luigis_mansion:entities/furniture/search/generic
execute unless entity @s[tag=searchable_by_vacuum,tag=!open] if score @s[tag=searchable_by_water] FurnitureSearch = @s FurnitureWater run scoreboard players operation @s SearcherID = @e[tag=same_room,tag=watering_me,sort=nearest,limit=1] ID
execute unless entity @s[tag=searchable_by_vacuum,tag=!open] if score @s[tag=searchable_by_water] FurnitureSearch = @s FurnitureWater run function luigis_mansion:entities/furniture/search/generic
execute unless entity @s[tag=searchable_by_vacuum,tag=!open] if score @s[tag=searchable_by_ice] FurnitureSearch = @s FurnitureIce run scoreboard players operation @s SearcherID = @e[tag=same_room,tag=freezing_me,sort=nearest,limit=1] ID
execute unless entity @s[tag=searchable_by_vacuum,tag=!open] if score @s[tag=searchable_by_ice] FurnitureSearch = @s FurnitureIce run function luigis_mansion:entities/furniture/search/generic
tag @s[tag=!in_vacuum,tag=!in_dust,tag=!in_fire,tag=!in_water,tag=!in_ice] add idle_furniture