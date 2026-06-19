scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,tag=!shrunk] ~ ~-0.6 ~ ~ ~
teleport @s[tag=flipped_gravity,tag=!shrunk] ~ ~0.6 ~ ~ ~
teleport @s[tag=!flipped_gravity,tag=shrunk] ~ ~-0.3 ~ ~ ~
teleport @s[tag=flipped_gravity,tag=shrunk] ~ ~0.3 ~ ~ ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 700
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.scared
scoreboard players remove @s[scores={AnimationProgress=1}] AnimationRotationY 30
scoreboard players add @s[scores={AnimationProgress=2..3}] AnimationRotationY 30
scoreboard players remove @s[scores={AnimationProgress=4..5}] AnimationRotationY 30
scoreboard players add @s[scores={AnimationProgress=6..7}] AnimationRotationY 30
scoreboard players remove @s[scores={AnimationProgress=8..9}] AnimationRotationY 30
scoreboard players add @s[scores={AnimationProgress=10}] AnimationRotationY 30
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0