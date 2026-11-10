scoreboard players add @s AnimationProgress 1
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.happy
scoreboard players add @s[scores={AnimationProgress=1..5}] AnimationRotationZ 60
scoreboard players remove @s[scores={AnimationProgress=6..10}] AnimationRotationX 40
scoreboard players remove @s[scores={AnimationProgress=11..15}] AnimationRotationZ 120
scoreboard players add @s[scores={AnimationProgress=16..20}] AnimationRotationX 80
scoreboard players add @s[scores={AnimationProgress=21..25}] AnimationRotationZ 60
scoreboard players remove @s[scores={AnimationProgress=26..30}] AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0