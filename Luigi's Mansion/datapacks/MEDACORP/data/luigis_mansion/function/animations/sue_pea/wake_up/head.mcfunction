scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 1800
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
scoreboard players add @s[scores={AnimationProgress=1..18}] AnimationRotationX 50
scoreboard players remove @s[scores={AnimationProgress=19..60}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=61..102}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=123..140}] AnimationRotationX 50
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.awake
data modify entity @s[scores={AnimationProgress=122}] item merge from entity @s item.components."minecraft:custom_data".model_data.default
scoreboard players set @s[scores={AnimationProgress=140..}] AnimationProgress 0