scoreboard players add @s AnimationProgress 1
execute at @s[scores={AnimationProgress=..37}] run particle minecraft:falling_water ~ ~1.8 ~ 0.2 0.1 0.2 0 2 normal @a[tag=same_room]
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.scared
scoreboard players remove @s[scores={AnimationProgress=31..32}] AnimationRotationY 100
scoreboard players add @s[scores={AnimationProgress=34..37}] AnimationRotationY 100
scoreboard players remove @s[scores={AnimationProgress=39..40}] AnimationRotationY 100
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0