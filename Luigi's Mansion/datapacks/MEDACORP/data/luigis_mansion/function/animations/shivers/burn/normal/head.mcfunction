teleport @s[tag=!flipped_gravity] ~ ~-0.3 ~
teleport @s[tag=flipped_gravity] ~ ~0.3 ~
scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=1..5}] AnimationRotationZ 30
scoreboard players remove @s[scores={AnimationProgress=6..15}] AnimationRotationZ 30
scoreboard players add @s[scores={AnimationProgress=16..20}] AnimationRotationZ 30
scoreboard players add @s[scores={AnimationProgress=1..5}] AnimationRotationX 30
scoreboard players remove @s[scores={AnimationProgress=6..15}] AnimationRotationX 30
scoreboard players add @s[scores={AnimationProgress=16..20}] AnimationRotationX 30
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.screaming