teleport @s[tag=!flipped_gravity] ~ ~-0.2 ~ ~ ~
teleport @s[tag=flipped_gravity] ~ ~0.2 ~ ~ ~
scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 30