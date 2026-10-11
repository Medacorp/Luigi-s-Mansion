scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 200
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.scared
scoreboard players remove @s[scores={AnimationProgress=1..3}] AnimationRotationX 50
scoreboard players add @s[scores={AnimationProgress=4..6}] AnimationRotationX 50
scoreboard players set @s[scores={AnimationProgress=6..9}] AnimationRotationX 200
scoreboard players remove @s[scores={AnimationProgress=10..12}] AnimationRotationX 50
scoreboard players add @s[scores={AnimationProgress=13..15}] AnimationRotationX 50
scoreboard players set @s[scores={AnimationProgress=15..}] AnimationProgress 0