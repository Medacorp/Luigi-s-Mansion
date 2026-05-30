scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:furniture.wooden_chest block @a[tag=same_room] ~ ~ ~ 1
execute store result score #temp Time run data get entity @s equipment.head.components."minecraft:custom_model_data".floats[0]
execute if entity @s[scores={ActionTime=1..26}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={ActionTime=27..29}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={ActionTime=30}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set #temp Time 30
scoreboard players reset #temp Time
scoreboard players set @s[scores={ActionTime=30}] ActionTime -1