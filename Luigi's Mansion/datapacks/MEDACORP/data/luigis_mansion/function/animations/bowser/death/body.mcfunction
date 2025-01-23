scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=91}] ^ ^-0.3 ^0.5
teleport @s[scores={AnimationProgress=92}] ^ ^-0.6 ^1
teleport @s[scores={AnimationProgress=93}] ^ ^-0.9 ^1.5
teleport @s[scores={AnimationProgress=94}] ^ ^-1.2 ^2
teleport @s[scores={AnimationProgress=95}] ^ ^-1.5 ^2.5
teleport @s[scores={AnimationProgress=96}] ^ ^-1.8 ^3
teleport @s[scores={AnimationProgress=97}] ^ ^-2.1 ^3.5
teleport @s[scores={AnimationProgress=98}] ^ ^-2.4 ^4
teleport @s[scores={AnimationProgress=99}] ^ ^-2.7 ^4.5
teleport @s[scores={AnimationProgress=100..}] ^ ^-3 ^5.5
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @s {Pose:{Head:[10.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=91..100}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 7
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProgress=100}] run playsound luigis_mansion:entity.bowser.land hostile @a[tag=same_room] ~ ~ ~ 3