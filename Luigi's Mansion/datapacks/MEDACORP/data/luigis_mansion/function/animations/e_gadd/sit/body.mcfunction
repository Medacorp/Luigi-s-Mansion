teleport @s[tag=!flipped_gravity] ~ ~-0.35 ~ ~ ~
teleport @s[tag=flipped_gravity] ~ ~0.35 ~ ~ ~
scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0