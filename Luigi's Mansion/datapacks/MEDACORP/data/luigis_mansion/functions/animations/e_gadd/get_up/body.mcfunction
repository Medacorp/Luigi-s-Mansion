scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1..10}] ~ ~-0.3 ~ ~ ~
teleport @s[scores={AnimationProgress=11}] ~ ~-0.25 ~ ~ ~
teleport @s[scores={AnimationProgress=12}] ~ ~-0.2 ~ ~ ~
teleport @s[scores={AnimationProgress=13}] ~ ~-0.15 ~ ~ ~
teleport @s[scores={AnimationProgress=14}] ~ ~-0.1 ~ ~ ~
teleport @s[scores={AnimationProgress=15}] ~ ~-0.05 ~ ~ ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=20}] run playsound luigis_mansion:entity.e_gadd.land neutral @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0