scoreboard players add @s ActionTime 1
tag @s[scores={ActionTime=1},predicate=luigis_mansion:furniture/altered_pitch_chance] add altered_pitch
execute if entity @s[scores={ActionTime=1},tag=!altered_pitch] run playsound luigis_mansion:furniture.dresser_mounted_golden_lamp block @a[tag=same_room] ~ ~ ~ 1 1
execute if entity @s[scores={ActionTime=1},tag=altered_pitch] run playsound luigis_mansion:furniture.dresser_mounted_golden_lamp block @a[tag=same_room] ~ ~ ~ 1 0.8
tag @s[scores={ActionTime=1}] remove altered_pitch
execute store result score #temp Time run data get entity @s equipment.head.components."minecraft:custom_model_data".floats[0]
execute if entity @s[scores={ActionTime=1..7}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={ActionTime=8}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players remove #temp Time 1
scoreboard players reset #temp Time
scoreboard players set @s[scores={ActionTime=16}] ActionTime -1