execute unless data entity @s Pose.Head[1] run data merge entity @s {Pose:{Head:[0.0f,0.001f,0.0f]}}

scoreboard players set @s FurnitureVacuum 0
execute if entity @s[scores={FurnitureXTarget=-900..900}] run function luigis_mansion:entities/furniture/type/swinging/x
execute if entity @s[scores={FurnitureZTarget=-900..900}] run function luigis_mansion:entities/furniture/type/swinging/z

execute if score @s[tag=!searched] FurnitureVacuum >= @s FurnitureSearch run function luigis_mansion:entities/furniture/search/generic
execute if score @s[tag=swinging_harms] FurnitureVacuum >= @s FurnitureSearch run function luigis_mansion:entities/furniture/type/swinging/hit
execute if score @s[tag=searched] FurnitureVacuum < @s FurnitureSearch run tag @s remove searched