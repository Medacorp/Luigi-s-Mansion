scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=6}] ~ ~-0.05 ~ ~ ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=7}] ~ ~-0.1 ~ ~ ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=8}] ~ ~-0.15 ~ ~ ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=9}] ~ ~-0.2 ~ ~ ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=10}] ~ ~-0.25 ~ ~ ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=11..20}] ~ ~-0.3 ~ ~ ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=6}] ~ ~0.05 ~ ~ ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=7}] ~ ~0.1 ~ ~ ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=8}] ~ ~0.15 ~ ~ ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=9}] ~ ~0.2 ~ ~ ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=10}] ~ ~0.25 ~ ~ ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=11..20}] ~ ~0.3 ~ ~ ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -100
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
scoreboard players add @s[scores={AnimationProgress=11..20}] AnimationRotationX 80
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0