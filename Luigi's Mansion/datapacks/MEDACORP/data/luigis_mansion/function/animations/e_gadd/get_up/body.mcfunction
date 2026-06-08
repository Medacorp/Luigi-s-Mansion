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
execute if entity @s[scores={AnimationProgress=20}] run playsound luigis_mansion:entity.e_gadd.land neutral @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0