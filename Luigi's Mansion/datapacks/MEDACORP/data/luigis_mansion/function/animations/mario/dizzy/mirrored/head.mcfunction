scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity] ~ ~-0.63 ~
teleport @s[tag=flipped_gravity] ~ ~0.63 ~
scoreboard players add @s[scores={AnimationProgress=1..5}] AnimationRotationX 4
scoreboard players remove @s[scores={AnimationProgress=6..15}] AnimationRotationX 4
scoreboard players add @s[scores={AnimationProgress=16..20}] AnimationRotationX 4
scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationZ 6
scoreboard players add @s[scores={AnimationProgress=6..15}] AnimationRotationZ 6
scoreboard players remove @s[scores={AnimationProgress=16..20}] AnimationRotationZ 6
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0