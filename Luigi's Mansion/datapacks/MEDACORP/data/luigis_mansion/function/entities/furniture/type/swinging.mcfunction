execute unless data entity @s Pose.Head[1] run data merge entity @s {Pose:{Head:[0.0f,0.001f,0.0f]}}

scoreboard players set @s FurnitureVacuum 0
execute if entity @s[scores={FurnitureXTarget=-900..900}] run function luigis_mansion:entities/furniture/type/swinging/x
execute if entity @s[scores={FurnitureZTarget=-900..900}] run function luigis_mansion:entities/furniture/type/swinging/z
execute if score @s FurnitureVacuum matches ..-1 run scoreboard players operation @s FurnitureVacuum *= #-1 Constants

scoreboard players add @s[tag=searched] FurnitureSwingTimer 1
execute if score @s[tag=!searched,tag=in_vacuum,tag=shaken_by_vacuum] FurnitureVacuum >= @s FurnitureSearch run scoreboard players operation @s SearcherID = @e[tag=same_room,tag=vacuuming_me,sort=nearest,limit=1] ID
execute if score @s[tag=!searched,tag=in_dust,tag=shaken_by_dust] FurnitureVacuum >= @s FurnitureSearch run scoreboard players operation @s SearcherID = @e[tag=same_room,tag=dusting_me,sort=nearest,limit=1] ID
execute if score @s[tag=!searched,tag=in_fire,tag=shaken_by_fire] FurnitureVacuum >= @s FurnitureSearch run scoreboard players operation @s SearcherID = @e[tag=same_room,tag=burning_me,sort=nearest,limit=1] ID
execute if score @s[tag=!searched,tag=in_water,tag=shaken_by_water] FurnitureVacuum >= @s FurnitureSearch run scoreboard players operation @s SearcherID = @e[tag=same_room,tag=watering_me,sort=nearest,limit=1] ID
execute if score @s[tag=!searched,tag=in_ice,tag=shaken_by_ice] FurnitureVacuum >= @s FurnitureSearch run scoreboard players operation @s SearcherID = @e[tag=same_room,tag=freezing_me,sort=nearest,limit=1] ID
execute if score @s[tag=!searched] FurnitureVacuum >= @s FurnitureSearch run function luigis_mansion:entities/furniture/search/generic
execute if score @s[tag=swinging_harms,scores={FurnitureSwingTimer=5..}] FurnitureVacuum >= @s FurnitureSearch run function luigis_mansion:entities/furniture/type/swinging/hit
execute if score @s[tag=searched] FurnitureVacuum < @s FurnitureSearch run tag @s remove searched
scoreboard players reset @s[tag=!searched] FurnitureSwingTimer
execute unless entity @s[tag=!shake,tag=!long_shake] run function luigis_mansion:entities/furniture/shake_sound with entity @s data.shake_sound
tag @s remove shake
tag @s remove long_shake