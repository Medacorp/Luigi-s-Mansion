scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=11..30}] run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=31..40}] run scoreboard players add @s AnimationRotationY 20
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0
execute unless data storage luigis_mansion:data luigi{tags:["dark_room"]} run data modify entity @s[tag=!low_health,tag=!poltergust_grabbed] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
execute if data storage luigis_mansion:data luigi{tags:["dark_room"]} run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared 
execute unless entity @s[tag=!low_health,tag=!poltergust_grabbed] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared