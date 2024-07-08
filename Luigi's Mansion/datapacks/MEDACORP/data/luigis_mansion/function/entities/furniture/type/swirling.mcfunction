scoreboard players operation @s FurnitureVacuum = @s FurnitureSpins
execute if score @s FurnitureVacuum matches ..-1 run scoreboard players add @s FurnitureVacuum 1
execute if score @s FurnitureVacuum matches ..-1 run scoreboard players operation @s FurnitureVacuum *= #-1 Constants

execute if score @s FurnitureVacuum >= @s FurnitureSearch run function luigis_mansion:entities/furniture/search/generic
execute unless entity @s[tag=!shake,tag=!long_shake] run function luigis_mansion:entities/furniture/shake_sound with entity @s ArmorItems[3].components."minecraft:custom_data".shake_sound
tag @s remove shake
tag @s remove long_shake