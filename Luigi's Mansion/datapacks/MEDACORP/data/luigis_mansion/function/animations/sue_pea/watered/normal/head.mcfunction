scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 1800
execute if entity @s[scores={AnimationProgress=1..20}] run scoreboard players add @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=41..60}] run scoreboard players remove @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=23..26}] run scoreboard players add @s AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=27..30}] run scoreboard players remove @s AnimationRotationY 60
execute if entity @s[scores={AnimationProgress=31..34}] run scoreboard players add @s AnimationRotationY 60
execute if entity @s[scores={AnimationProgress=35..38}] run scoreboard players remove @s AnimationRotationY 30
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.awake
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0