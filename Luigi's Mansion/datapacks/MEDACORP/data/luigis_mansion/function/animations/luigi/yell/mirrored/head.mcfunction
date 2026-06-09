scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationY 20
scoreboard players remove @s[scores={AnimationProgress=11..30}] AnimationRotationY 20
scoreboard players add @s[scores={AnimationProgress=31..40}] AnimationRotationY 20
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0
execute unless data storage luigis_mansion:data luigi{tags:["dark_room"]} run data modify entity @s[tag=!low_health,tag=!poltergust_grabbed] item merge from entity @s item.components."minecraft:custom_data".model_data.default
execute if data storage luigis_mansion:data luigi{tags:["dark_room"]} run data modify entity @s item merge from entity @s item.components."minecraft:custom_data".model_data.scared 
execute unless entity @s[tag=!low_health,tag=!poltergust_grabbed] run data modify entity @s item merge from entity @s item.components."minecraft:custom_data".model_data.scared