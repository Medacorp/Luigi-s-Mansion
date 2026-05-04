scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=5}] run playsound luigis_mansion:furniture.washing_machine block @a[tag=same_room] ~ ~ ~ 1
execute store result score #temp Time run data get entity @s equipment.head.components."minecraft:custom_model_data".floats[0]
execute if entity @s[scores={ActionTime=1..5}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={ActionTime=6..7}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={ActionTime=8..9}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
scoreboard players reset #temp Time
scoreboard players set @s[scores={ActionTime=10}] ActionTime -1