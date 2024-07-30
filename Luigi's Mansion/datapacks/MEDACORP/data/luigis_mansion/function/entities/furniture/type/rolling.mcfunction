tag @s[tag=in_vacuum,tag=shaken_by_vacuum] add rolling
tag @s[tag=in_dust,tag=shaken_by_dust] add rolling
tag @s[tag=in_fire,tag=shaken_by_fire] add rolling
tag @s[tag=in_water,tag=shaken_by_water] add rolling
tag @s[tag=in_ice,tag=shaken_by_ice] add rolling
execute unless entity @s[scores={FurnitureVacuum=0},tag=!rolling] run function luigis_mansion:entities/furniture/type/rolling/roll

execute if score @s[tag=!searched,tag=in_vacuum,tag=shaken_by_vacuum] FurnitureVacuum >= @s FurnitureSearch run scoreboard players operation @s SearcherID = @p[tag=same_room,tag=vacuuming_me] ID
execute if score @s[tag=!searched,tag=in_dust,tag=shaken_by_dust] FurnitureVacuum >= @s FurnitureSearch run scoreboard players operation @s SearcherID = @p[tag=same_room,tag=dusting_me] ID
execute if score @s[tag=!searched,tag=in_fire,tag=shaken_by_fire] FurnitureVacuum >= @s FurnitureSearch run scoreboard players operation @s SearcherID = @p[tag=same_room,tag=burning_me] ID
execute if score @s[tag=!searched,tag=in_water,tag=shaken_by_water] FurnitureVacuum >= @s FurnitureSearch run scoreboard players operation @s SearcherID = @p[tag=same_room,tag=watering_me] ID
execute if score @s[tag=!searched,tag=in_ice,tag=shaken_by_ice] FurnitureVacuum >= @s FurnitureSearch run scoreboard players operation @s SearcherID = @p[tag=same_room,tag=freezing_me] ID
execute if score @s[tag=!searched] FurnitureVacuum >= @s FurnitureSearch run function luigis_mansion:entities/furniture/search/generic
execute if score @s[tag=searched] FurnitureVacuum < @s FurnitureSearch run tag @s remove searched