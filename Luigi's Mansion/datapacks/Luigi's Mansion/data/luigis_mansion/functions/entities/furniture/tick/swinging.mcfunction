tag @s add no_visible_shake
tag @s remove long_shake
execute if entity @s[tag=shake] run function luigis_mansion:entities/furniture/tick/shake
execute unless data entity @s Pose.Head[1] run data merge entity @s {Pose:{Head:[0.0f,0.001f,0.0f]}}

execute if entity @s[scores={FurnitureXTarget=-900..900}] run function luigis_mansion:entities/furniture/tick/swing/x
execute if entity @s[scores={FurnitureZTarget=-900..900}] run function luigis_mansion:entities/furniture/tick/swing/z

execute if entity @s[scores={FurnitureXProg=84,FurnitureXTarget=-50..50}] unless entity @s[scores={FurnitureXTarget=-5..5}] run playsound luigis_mansion:block.search.swing block @a[tag=same_room] ~ ~ ~ 1 0.2
execute if entity @s[scores={FurnitureXProg=84,FurnitureXTarget=-100..100}] unless entity @s[scores={FurnitureXTarget=-50..50}] run playsound luigis_mansion:block.search.swing block @a[tag=same_room] ~ ~ ~ 1 0.4
execute if entity @s[scores={FurnitureXProg=84,FurnitureXTarget=-200..200}] unless entity @s[scores={FurnitureXTarget=-100..100}] run playsound luigis_mansion:block.search.swing block @a[tag=same_room] ~ ~ ~ 1 0.6
execute if entity @s[scores={FurnitureXProg=84,FurnitureXTarget=-300..300}] unless entity @s[scores={FurnitureXTarget=-200..200}] run playsound luigis_mansion:block.search.swing block @a[tag=same_room] ~ ~ ~ 1 0.8
execute if entity @s[scores={FurnitureXProg=84}] unless entity @s[scores={FurnitureXTarget=-300..300}] run playsound luigis_mansion:block.search.swing block @a[tag=same_room] ~ ~ ~ 1 1
execute if entity @s[scores={FurnitureZProg=84,FurnitureZTarget=-50..50}] unless entity @s[scores={FurnitureZTarget=-5..5}] run playsound luigis_mansion:block.search.swing block @a[tag=same_room] ~ ~ ~ 1 0.2
execute if entity @s[scores={FurnitureZProg=84,FurnitureZTarget=-100..100}] unless entity @s[scores={FurnitureZTarget=-50..50}] run playsound luigis_mansion:block.search.swing block @a[tag=same_room] ~ ~ ~ 1 0.4
execute if entity @s[scores={FurnitureZProg=84,FurnitureZTarget=-200..200}] unless entity @s[scores={FurnitureZTarget=-100..100}] run playsound luigis_mansion:block.search.swing block @a[tag=same_room] ~ ~ ~ 1 0.6
execute if entity @s[scores={FurnitureZProg=84,FurnitureZTarget=-300..300}] unless entity @s[scores={FurnitureZTarget=-200..200}] run playsound luigis_mansion:block.search.swing block @a[tag=same_room] ~ ~ ~ 1 0.8
execute if entity @s[scores={FurnitureZProg=84}] unless entity @s[scores={FurnitureZTarget=-300..300}] run playsound luigis_mansion:block.search.swing block @a[tag=same_room] ~ ~ ~ 1 1

scoreboard players set @s FurnitureVacuum 0
execute if entity @s[scores={FurnitureXTarget=-900..900}] run scoreboard players operation @s FurnitureVacuum = @s FurnitureXTarget
execute if score @s FurnitureVacuum matches ..-1 if score @s FurnitureZTarget matches 1.. run scoreboard players operation @s FurnitureVacuum *= #-1 Constants
execute if score @s FurnitureVacuum matches 1.. if score @s FurnitureZTarget matches ..-1 run scoreboard players operation @s FurnitureVacuum *= #-1 Constants
execute if score @s FurnitureVacuum matches ..-1 if entity @s[scores={FurnitureZTarget=-900..900}] run scoreboard players operation @s FurnitureVacuum < @s FurnitureZTarget
execute if score @s FurnitureVacuum matches 1.. if entity @s[scores={FurnitureZTarget=-900..900}] run scoreboard players operation @s FurnitureVacuum > @s FurnitureZTarget
execute if score @s FurnitureVacuum matches 0 if entity @s[scores={FurnitureZTarget=-900..900}] run scoreboard players operation @s FurnitureVacuum = @s FurnitureZTarget
execute if score @s FurnitureVacuum matches ..-1 run scoreboard players operation @s FurnitureVacuum *= #-1 Constants

execute if entity @s[tag=punching_bag,scores={FurnitureVacuum=0}] align y run fill ~ ~-4 ~ ~ ~-2 ~ minecraft:light_gray_stained_glass
execute if entity @s[tag=punching_bag] unless entity @s[scores={FurnitureVacuum=0}] align y run fill ~ ~-4 ~ ~ ~-2 ~ minecraft:air
execute if entity @s[tag=punching_bag,tag=remove_from_existence] align y run fill ~ ~-4 ~ ~ ~-2 ~ minecraft:air

scoreboard players operation #temp FurnitureVacuum = @s FurnitureVacuum
scoreboard players operation #temp FurnitureVacuum /= #2 Constants
execute if score @s[tag=!searched] FurnitureVacuum >= @s FurnitureSearch run function luigis_mansion:entities/furniture/tick/search_swing
execute if score @s[tag=swinging_harms] FurnitureVacuum >= @s FurnitureSearch run function luigis_mansion:entities/furniture/tick/swing/hit
execute if score @s[tag=searched] FurnitureVacuum < #temp FurnitureSearch run tag @s remove searched
execute if entity @s[tag=searchable_by_hand,tag=search] run function luigis_mansion:entities/furniture/tick/search
tag @s remove search
scoreboard players reset #temp FurnitureVacuum
execute if entity @s[tag=drop_loot] run function luigis_mansion:entities/furniture/tick/search_swing
tag @s remove drop_loot

tag @s remove in_vacuum