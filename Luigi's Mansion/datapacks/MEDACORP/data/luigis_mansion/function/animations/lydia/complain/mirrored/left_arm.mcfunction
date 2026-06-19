scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players add @s[scores={AnimationProgress=11..20}] AnimationRotationZ 30
scoreboard players remove @s[scores={AnimationProgress=21..25}] AnimationRotationY 10
scoreboard players add @s[scores={AnimationProgress=26..30}] AnimationRotationY 10
scoreboard players remove @s[scores={AnimationProgress=31..35}] AnimationRotationY 10
scoreboard players add @s[scores={AnimationProgress=36..40}] AnimationRotationY 10
scoreboard players remove @s[scores={AnimationProgress=41..45}] AnimationRotationY 10
scoreboard players add @s[scores={AnimationProgress=46..50}] AnimationRotationY 10
scoreboard players remove @s[scores={AnimationProgress=51..55}] AnimationRotationY 10
scoreboard players add @s[scores={AnimationProgress=56..60}] AnimationRotationY 10
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.equipment
data modify entity @s[scores={AnimationProgress=20}] item merge from entity @s item.components."minecraft:custom_data".model_data.default
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0