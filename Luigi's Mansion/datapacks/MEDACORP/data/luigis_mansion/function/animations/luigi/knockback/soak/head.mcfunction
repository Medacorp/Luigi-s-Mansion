scoreboard players add @s AnimationProgress 1
execute at @s[scores={AnimationProgress=..37}] run particle minecraft:falling_water ~ ~1.8 ~ 0.2 0.1 0.2 0 2 normal @a[tag=same_room]
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared
execute if entity @s[scores={AnimationProgress=31..32}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 100
execute if entity @s[scores={AnimationProgress=34..37}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 100
execute if entity @s[scores={AnimationProgress=39..40}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 100
execute if entity @s[scores={AnimationProgress=31..32}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 100
execute if entity @s[scores={AnimationProgress=34..37}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 100
execute if entity @s[scores={AnimationProgress=39..40}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 100
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0