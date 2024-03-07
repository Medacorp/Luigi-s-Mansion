scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1..12}] ^ ^0.55 ^-0.55
teleport @s[scores={AnimationProgress=13}] ^ ^0.4 ^-0.55
teleport @s[scores={AnimationProgress=14}] ^ ^0.25 ^-0.55
teleport @s[scores={AnimationProgress=15}] ^ ^0.1 ^-0.55
teleport @s[scores={AnimationProgress=16}] ^ ^-0.05 ^-0.55
teleport @s[scores={AnimationProgress=17}] ^ ^-0.2 ^-0.55
teleport @s[scores={AnimationProgress=18}] ^ ^-0.35 ^-0.55
teleport @s[scores={AnimationProgress=19}] ^ ^-0.5 ^-0.55
teleport @s[scores={AnimationProgress=20}] ^ ^-0.65 ^-0.55
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[90.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=11..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0