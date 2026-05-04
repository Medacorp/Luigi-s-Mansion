scoreboard players add @s ActionTime 1
tag @s[scores={ActionTime=1},predicate=luigis_mansion:furniture/altered_pitch_chance] add altered_pitch
execute if entity @s[scores={ActionTime=1},tag=!altered_pitch] run playsound luigis_mansion:furniture.nightstand block @a[tag=same_room] ~ ~ ~ 1 1
execute if entity @s[scores={ActionTime=1},tag=altered_pitch] run playsound luigis_mansion:furniture.nightstand block @a[tag=same_room] ~ ~ ~ 1 0.6
tag @s[scores={ActionTime=1}] remove altered_pitch
execute store result score #temp Time run data get entity @s equipment.head.components."minecraft:custom_model_data".floats[0]
execute if entity @s[scores={ActionTime=1..6}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={ActionTime=12..13}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
scoreboard players set @s[scores={ActionTime=15}] ActionTime -1