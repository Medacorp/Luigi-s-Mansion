scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=6}] ~ ~-0.05 ~ ~ ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=7}] ~ ~-0.1 ~ ~ ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=8}] ~ ~-0.15 ~ ~ ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=9..20}] ~ ~-0.2 ~ ~ ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=6}] ~ ~0.05 ~ ~ ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=7}] ~ ~0.1 ~ ~ ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=8}] ~ ~0.15 ~ ~ ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=9..20}] ~ ~0.2 ~ ~ ~
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0