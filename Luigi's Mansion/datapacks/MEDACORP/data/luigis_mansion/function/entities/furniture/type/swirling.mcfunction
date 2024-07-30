scoreboard players operation @s FurnitureVacuum = @s FurnitureSpins
execute if score @s FurnitureVacuum matches ..-1 run scoreboard players add @s FurnitureVacuum 1
execute if score @s FurnitureVacuum matches ..-1 run scoreboard players operation @s FurnitureVacuum *= #-1 Constants

execute if score @s[tag=in_vacuum,tag=shaken_by_vacuum] FurnitureVacuum >= @s FurnitureSearch run scoreboard players operation @s SearcherID = @p[tag=same_room,tag=vacuuming_me] ID
execute if score @s[tag=in_dust,tag=shaken_by_dust] FurnitureVacuum >= @s FurnitureSearch run scoreboard players operation @s SearcherID = @p[tag=same_room,tag=dusting_me] ID
execute if score @s[tag=in_fire,tag=shaken_by_fire] FurnitureVacuum >= @s FurnitureSearch run scoreboard players operation @s SearcherID = @p[tag=same_room,tag=burning_me] ID
execute if score @s[tag=in_water,tag=shaken_by_water] FurnitureVacuum >= @s FurnitureSearch run scoreboard players operation @s SearcherID = @p[tag=same_room,tag=watering_me] ID
execute if score @s[tag=in_ice,tag=shaken_by_ice] FurnitureVacuum >= @s FurnitureSearch run scoreboard players operation @s SearcherID = @p[tag=same_room,tag=freezing_me] ID
execute if score @s FurnitureVacuum >= @s FurnitureSearch run function luigis_mansion:entities/furniture/search/generic
execute unless entity @s[tag=!shake,tag=!long_shake] run function luigis_mansion:entities/furniture/shake_sound with entity @s ArmorItems[3].components."minecraft:custom_data".shake_sound
tag @s remove shake
tag @s remove long_shake