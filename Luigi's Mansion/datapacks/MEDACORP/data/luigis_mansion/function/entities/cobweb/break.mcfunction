tag @s add broken
data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.broken
scoreboard players set @s VacuumTime 0
scoreboard players operation #temp ID = @s VacuumHitter
execute as @e[tag=luigi,tag=same_room] if score #temp ID = @s ID at @s positioned ~ ~0.5 ~ positioned ^ ^ ^0.5 run particle minecraft:dust{color:11730943,scale:1f} ~ ~ ~ 0.2 0.2 0.2 1 10
scoreboard players reset #temp ID