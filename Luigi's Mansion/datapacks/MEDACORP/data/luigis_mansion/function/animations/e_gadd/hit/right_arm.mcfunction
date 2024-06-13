scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^-0.1 ^-0.1
teleport @s[scores={AnimationProgress=2}] ^ ^-0.2 ^-0.2
teleport @s[scores={AnimationProgress=3}] ^ ^-0.2 ^-0.2
teleport @s[scores={AnimationProgress=4}] ^ ^-0.3 ^-0.1
teleport @s[scores={AnimationProgress=5}] ^ ^-0.4 ^
teleport @s[scores={AnimationProgress=6}] ^ ^-0.3 ^0.1
teleport @s[scores={AnimationProgress=7}] ^ ^-0.2 ^0.2
teleport @s[scores={AnimationProgress=8}] ^ ^-0.2 ^0.2
teleport @s[scores={AnimationProgress=9}] ^ ^-0.1 ^0.1
teleport @s[scores={AnimationProgress=11}] ^ ^-0.1 ^-0.1
teleport @s[scores={AnimationProgress=12}] ^ ^-0.2 ^-0.2
teleport @s[scores={AnimationProgress=13}] ^ ^-0.2 ^-0.2
teleport @s[scores={AnimationProgress=14}] ^ ^-0.3 ^-0.1
teleport @s[scores={AnimationProgress=15}] ^ ^-0.4 ^
teleport @s[scores={AnimationProgress=16}] ^ ^-0.3 ^0.1
teleport @s[scores={AnimationProgress=17}] ^ ^-0.2 ^0.2
teleport @s[scores={AnimationProgress=18}] ^ ^-0.2 ^0.2
teleport @s[scores={AnimationProgress=19}] ^ ^-0.1 ^0.1
teleport @s[scores={AnimationProgress=21}] ^ ^-0.1 ^-0.1
teleport @s[scores={AnimationProgress=22}] ^ ^-0.2 ^-0.2
teleport @s[scores={AnimationProgress=23}] ^ ^-0.2 ^-0.2
teleport @s[scores={AnimationProgress=24}] ^ ^-0.3 ^-0.1
teleport @s[scores={AnimationProgress=25}] ^ ^-0.45 ^
teleport @s[scores={AnimationProgress=26}] ^ ^-0.4 ^0.1
teleport @s[scores={AnimationProgress=27}] ^ ^-0.35 ^0.2
teleport @s[scores={AnimationProgress=28}] ^ ^-0.4 ^0.2
teleport @s[scores={AnimationProgress=29}] ^ ^-0.35 ^0.1
teleport @s[scores={AnimationProgress=30}] ^ ^-0.3 ^
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,0.0f,10.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=11..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 8
execute store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 36
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0
scoreboard players reset #temp Time