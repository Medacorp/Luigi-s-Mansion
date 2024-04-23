scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=..31}] ^ ^-3 ^2
teleport @s[scores={AnimationProgress=32}] ^ ^-2.75 ^1.9
teleport @s[scores={AnimationProgress=33}] ^ ^-2.6 ^1.8
teleport @s[scores={AnimationProgress=34}] ^ ^-2.45 ^1.7
teleport @s[scores={AnimationProgress=35}] ^ ^-2.3 ^1.6
teleport @s[scores={AnimationProgress=36}] ^ ^-2.25 ^1.5
teleport @s[scores={AnimationProgress=37}] ^ ^-2.1 ^1.4
teleport @s[scores={AnimationProgress=38}] ^ ^-1.95 ^1.3
teleport @s[scores={AnimationProgress=39}] ^ ^-1.8 ^1.2
teleport @s[scores={AnimationProgress=40}] ^ ^-1.65 ^1.1
teleport @s[scores={AnimationProgress=41}] ^ ^-1.5 ^1
teleport @s[scores={AnimationProgress=42}] ^ ^-1.35 ^0.9
teleport @s[scores={AnimationProgress=43}] ^ ^-1.2 ^0.8
teleport @s[scores={AnimationProgress=44}] ^ ^-1.05 ^0.7
teleport @s[scores={AnimationProgress=45}] ^ ^-0.9 ^0.6
teleport @s[scores={AnimationProgress=46}] ^ ^-0.75 ^0.5
teleport @s[scores={AnimationProgress=47}] ^ ^-0.6 ^0.4
teleport @s[scores={AnimationProgress=48}] ^ ^-0.45 ^0.3
teleport @s[scores={AnimationProgress=49}] ^ ^-0.3 ^0.2
teleport @s[scores={AnimationProgress=50}] ^ ^-0.15 ^0.1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[30.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..50}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=51..70}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProgress=1}] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.open_mouth
scoreboard players set @s[scores={AnimationProgress=70}] AnimationProgress 0