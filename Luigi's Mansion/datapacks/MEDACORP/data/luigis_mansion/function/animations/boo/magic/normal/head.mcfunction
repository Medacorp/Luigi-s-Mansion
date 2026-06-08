scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -140
execute if entity @s[scores={AnimationProgress=106..120}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=11..20}] run scoreboard players remove @s AnimationRotationZ 5
execute if entity @s[scores={AnimationProgress=21..39}] run scoreboard players remove @s AnimationRotationZ 40
execute if entity @s[scores={AnimationProgress=40..101}] run scoreboard players remove @s AnimationRotationZ 45
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.attacking
scoreboard players set @s[scores={AnimationProgress=120}] AnimationProgress 0