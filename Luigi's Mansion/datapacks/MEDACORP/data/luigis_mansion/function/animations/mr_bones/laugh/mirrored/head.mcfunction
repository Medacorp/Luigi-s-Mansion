scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity] ~ ~-0.6 ~
teleport @s[tag=flipped_gravity] ~ ~0.6 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -1400
scoreboard players remove @s[scores={AnimationProgress=1}] AnimationRotationZ 1800
scoreboard players remove @s[scores={AnimationProgress=1..3}] AnimationRotationX 50
scoreboard players add @s[scores={AnimationProgress=4..9}] AnimationRotationX 50
scoreboard players remove @s[scores={AnimationProgress=10..12}] AnimationRotationX 50
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0