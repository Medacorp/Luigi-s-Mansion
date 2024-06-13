scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1..6}] ~ ~0.01 ~
teleport @s[scores={AnimationProgress=11..16}] ~ ~-0.01 ~ 
teleport @s[scores={AnimationProgress=21..26}] ~ ~0.01 ~
teleport @s[scores={AnimationProgress=31..36}] ~ ~-0.01 ~
execute at @s run teleport @s[scores={AnimationProgress=26..35}] ^ ^0.01 ^0.01
execute at @s run teleport @s[scores={AnimationProgress=36..40}] ^ ^0.01 ^-0.01
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=26..35}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=36..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0