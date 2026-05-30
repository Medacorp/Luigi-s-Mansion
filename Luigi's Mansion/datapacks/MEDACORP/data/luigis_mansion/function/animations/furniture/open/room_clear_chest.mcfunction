scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:furniture.room_clear_chest.open block @a[tag=same_room] ~ ~ ~ 1
execute store result score #temp Time run data get entity @s equipment.head.components."minecraft:custom_model_data".floats[0]
execute if entity @s[scores={ActionTime=1..4}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={ActionTime=4}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={ActionTime=7}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={ActionTime=8}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={ActionTime=10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 4
scoreboard players reset #temp Time
scoreboard players set @s[scores={ActionTime=12}] ActionTime -1