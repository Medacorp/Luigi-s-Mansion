scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^-1.333 ^0.667
teleport @s[scores={AnimationProgress=2}] ^ ^-1.2 ^0.6
teleport @s[scores={AnimationProgress=3}] ^ ^-1.067 ^0.533
teleport @s[scores={AnimationProgress=4}] ^ ^-0.933 ^0.467
teleport @s[scores={AnimationProgress=5}] ^ ^-0.8 ^0.4
teleport @s[scores={AnimationProgress=6}] ^ ^-0.667 ^0.333
teleport @s[scores={AnimationProgress=7}] ^ ^-0.533 ^0.267
teleport @s[scores={AnimationProgress=8}] ^ ^-0.4 ^0.2
teleport @s[scores={AnimationProgress=9}] ^ ^-0.267 ^0.133
teleport @s[scores={AnimationProgress=10}] ^ ^-0.133 ^0.067
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[20.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProgress=11}] run playsound luigis_mansion:entity.bowser.grab_head hostile @a[tag=same_room] ~ ~ ~ 3
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0