scoreboard players operation #temp Time = @s SpawnTime
scoreboard players operation #temp Time %= #4 Constants
execute if score #temp Time matches 1.. run data modify entity @s equipment.head.components."minecraft:custom_model_data".flags[0] set value 0b
execute if score #temp Time matches 0 run data modify entity @s equipment.head.components."minecraft:custom_model_data".flags[0] set value 1b
scoreboard players reset #temp Time
tag @s[scores={SpawnTime=300},tag=!eternal] add dead