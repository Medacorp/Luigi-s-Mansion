scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,tag=!shrunk] ~ ~-0.6 ~ ~ ~
teleport @s[tag=flipped_gravity,tag=!shrunk] ~ ~0.6 ~ ~ ~
teleport @s[tag=!flipped_gravity,tag=shrunk] ~ ~-0.3 ~ ~ ~
teleport @s[tag=flipped_gravity,tag=shrunk] ~ ~0.3 ~ ~ ~
scoreboard players remove @s[scores={AnimationProgress=1}] AnimationRotationY 20
scoreboard players add @s[scores={AnimationProgress=2..3}] AnimationRotationY 20
scoreboard players remove @s[scores={AnimationProgress=4..5}] AnimationRotationY 20
scoreboard players add @s[scores={AnimationProgress=6..7}] AnimationRotationY 20
scoreboard players remove @s[scores={AnimationProgress=8..9}] AnimationRotationY 20
scoreboard players add @s[scores={AnimationProgress=10}] AnimationRotationY 20
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0