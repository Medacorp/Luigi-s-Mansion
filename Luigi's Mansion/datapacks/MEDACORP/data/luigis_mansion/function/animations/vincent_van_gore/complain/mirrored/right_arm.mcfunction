scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1200
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -300
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 900
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=8..}] AnimationProgress 0