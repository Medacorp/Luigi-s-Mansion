scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=11..30}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=31..40}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0
execute unless data storage luigis_mansion:data luigi{tags:["dark_room"]} run data modify entity @s[tag=!low_health,tag=!poltergust_grabbed] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
execute if data storage luigis_mansion:data luigi{tags:["dark_room"]} run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared 
execute unless entity @s[tag=!low_health,tag=!poltergust_grabbed] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared