scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 450
scoreboard players remove @s[scores={AnimationProgress=1..9}] AnimationRotationX 50
scoreboard players add @s[scores={AnimationProgress=10..18}] AnimationRotationX 50
scoreboard players add @s[scores={AnimationProgress=1..8}] AnimationRotationZ 20
scoreboard players remove @s[scores={AnimationProgress=11..18}] AnimationRotationZ 20
data modify entity @s item merge from entity @s item.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=18..}] AnimationProgress 0