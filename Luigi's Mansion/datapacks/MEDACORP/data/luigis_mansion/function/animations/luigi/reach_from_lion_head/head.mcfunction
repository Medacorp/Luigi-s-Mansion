scoreboard players add @s AnimationProgress 1
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -360
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 360
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared
execute if entity @s[scores={AnimationProgress=1..5}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=6..15}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=16..20}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=1..5}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=6..15}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=16..20}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 20
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0