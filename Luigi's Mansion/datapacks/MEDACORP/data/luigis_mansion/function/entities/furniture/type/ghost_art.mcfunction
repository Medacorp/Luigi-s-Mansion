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
execute if score @s[tag=searchable_by_vacuum,tag=!searchable_by_dust,tag=!searchable_by_fire,tag=!searchable_by_water,tag=!searchable_by_ice] FurnitureSearch = @s FurnitureVacuum run function luigis_mansion:entities/furniture/search/ghost_art
execute if score @s[tag=searchable_by_dust] FurnitureSearch = @s FurnitureDust run scoreboard players operation @s SearcherID = @e[tag=same_room,tag=dusting_me,sort=nearest,limit=1] ID
execute if score @s[tag=searchable_by_dust] FurnitureSearch = @s FurnitureDust run function luigis_mansion:entities/furniture/search/ghost_art
execute if score @s[tag=searchable_by_fire] FurnitureSearch = @s FurnitureFire run scoreboard players operation @s SearcherID = @e[tag=same_room,tag=burning_me,sort=nearest,limit=1] ID
execute if score @s[tag=searchable_by_fire] FurnitureSearch = @s FurnitureFire run function luigis_mansion:entities/furniture/search/ghost_art
execute if score @s[tag=searchable_by_water] FurnitureSearch = @s FurnitureWater run scoreboard players operation @s SearcherID = @e[tag=same_room,tag=watering_me,sort=nearest,limit=1] ID
execute if score @s[tag=searchable_by_water] FurnitureSearch = @s FurnitureWater run function luigis_mansion:entities/furniture/search/ghost_art
execute if score @s[tag=searchable_by_ice] FurnitureSearch = @s FurnitureIce run scoreboard players operation @s SearcherID = @e[tag=same_room,tag=freezing_me,sort=nearest,limit=1] ID
execute if score @s[tag=searchable_by_ice] FurnitureSearch = @s FurnitureIce run function luigis_mansion:entities/furniture/search/ghost_art

execute if entity @s[tag=open,tag=full_search] run function luigis_mansion:entities/furniture/search/ghost_art

execute if entity @s[tag=!open,tag=!dead,tag=!remove_from_existence] run function luigis_mansion:room/dark_room
tag @s[tag=!dark_room] add open
execute if entity @s[tag=!open] run summon minecraft:marker ~ ~1.4 ~ {Tags:["location","remove_from_existence"]}
execute if entity @s[tag=!open] store result entity @e[tag=location,limit=1] Pos[1] double 0.1 run scoreboard players get @s PositionY
execute if entity @s[tag=!open] at @e[tag=location] if entity @e[distance=..0.1,tag=ghost,tag=hiding_in_furniture,limit=1] run tag @s add open
kill @e[tag=location]

tag @s[tag=!in_vacuum,tag=!in_dust,tag=!in_fire,tag=!in_water,tag=!in_ice,tag=open] add idle_furniture