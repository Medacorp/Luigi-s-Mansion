scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -500
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 100
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 600
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players remove @s AnimationRotationX 80
execute if entity @s[scores={AnimationProgress=20..29}] run scoreboard players add @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=30..34}] run scoreboard players remove @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=35..39}] run scoreboard players add @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=1..19}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=20..29}] run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=20..29}] run scoreboard players remove @s AnimationRotationZ 60
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.banana
data modify entity @s[scores={AnimationProgress=20}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.banana_peel
data modify entity @s[scores={AnimationProgress=35}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0