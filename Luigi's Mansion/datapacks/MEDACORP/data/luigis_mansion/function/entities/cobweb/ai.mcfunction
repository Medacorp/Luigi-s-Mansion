scoreboard players add @s[tag=in_vacuum,tag=!broken] VacuumTime 1
scoreboard players remove @s[tag=!in_vacuum,scores={VacuumTime=1..}] VacuumTime 1
scoreboard players operation #temp VacuumTime = @s VacuumTime
scoreboard players operation #temp VacuumTime %= #8 Constants
execute unless score #temp VacuumTime matches 1..6 run data modify entity @s[tag=!broken] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.default
execute if score #temp VacuumTime matches 1..2 run data modify entity @s[tag=!broken] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.pulled
execute if score #temp VacuumTime matches 3..4 run data modify entity @s[tag=!broken] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.default
execute if score #temp VacuumTime matches 5..6 run data modify entity @s[tag=!broken] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.pushed
scoreboard players reset #temp VacuumTime
execute if entity @s[tag=in_vacuum,scores={VacuumTime=40}] run function luigis_mansion:entities/cobweb/break