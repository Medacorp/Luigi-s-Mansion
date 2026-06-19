scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -500
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 100
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 600
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationX 80
scoreboard players add @s[scores={AnimationProgress=20..29}] AnimationRotationX 40
scoreboard players remove @s[scores={AnimationProgress=30..34}] AnimationRotationX 50
scoreboard players add @s[scores={AnimationProgress=35..39}] AnimationRotationX 50
scoreboard players add @s[scores={AnimationProgress=1..19}] AnimationRotationY 10
scoreboard players remove @s[scores={AnimationProgress=20..29}] AnimationRotationY 20
scoreboard players remove @s[scores={AnimationProgress=20..29}] AnimationRotationZ 60
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.banana
data modify entity @s[scores={AnimationProgress=20}] item merge from entity @s item.components."minecraft:custom_data".model_data.banana_peel
data modify entity @s[scores={AnimationProgress=35}] item merge from entity @s item.components."minecraft:custom_data".model_data.default
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0