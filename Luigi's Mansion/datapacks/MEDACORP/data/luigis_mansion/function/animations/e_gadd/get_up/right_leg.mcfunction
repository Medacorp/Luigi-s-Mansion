scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=1..10}] ~ ~-0.3 ~ ~ ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=11}] ~ ~-0.25 ~ ~ ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=12}] ~ ~-0.2 ~ ~ ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=13}] ~ ~-0.15 ~ ~ ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=14}] ~ ~-0.1 ~ ~ ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=15}] ~ ~-0.05 ~ ~ ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=1..10}] ~ ~0.3 ~ ~ ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=11}] ~ ~0.25 ~ ~ ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=12}] ~ ~0.2 ~ ~ ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=13}] ~ ~0.15 ~ ~ ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=14}] ~ ~0.1 ~ ~ ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=15}] ~ ~0.05 ~ ~ ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 150
scoreboard players add @s[scores={AnimationProgress=11..20}] AnimationRotationX 90
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0