scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 1800
scoreboard players add @s[scores={AnimationProgress=1..20}] AnimationRotationX 30
scoreboard players remove @s[scores={AnimationProgress=41..60}] AnimationRotationX 30
scoreboard players remove @s[scores={AnimationProgress=23..26}] AnimationRotationY 30
scoreboard players add @s[scores={AnimationProgress=27..30}] AnimationRotationY 60
scoreboard players remove @s[scores={AnimationProgress=31..34}] AnimationRotationY 60
scoreboard players add @s[scores={AnimationProgress=35..38}] AnimationRotationY 30
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.awake
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0