tag @s add broken
data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 3
scoreboard players set @s VacuumTime 0
scoreboard players operation #temp ID = @s VacuumHitter
execute as @a[tag=same_room] if score #temp ID = @s ID at @s positioned ~ ~0.5 ~ positioned ^ ^ ^0.5 run particle minecraft:dust{color:[0.7f,1f,1f],scale:1f} ~ ~ ~ 0.2 0.2 0.2 1 10
scoreboard players reset #temp ID