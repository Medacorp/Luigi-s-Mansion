scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=91}] ^ ^-0.4 ^0.667
teleport @s[scores={AnimationProgress=92}] ^ ^-0.8 ^1.333
teleport @s[scores={AnimationProgress=93}] ^ ^-1.2 ^2
teleport @s[scores={AnimationProgress=94}] ^ ^-1.6 ^2.667
teleport @s[scores={AnimationProgress=95}] ^ ^-2 ^3.333
teleport @s[scores={AnimationProgress=96}] ^ ^-2.4 ^4.667
teleport @s[scores={AnimationProgress=97}] ^ ^-2.8 ^4.667
teleport @s[scores={AnimationProgress=98}] ^ ^-3.2 ^5.333
teleport @s[scores={AnimationProgress=99}] ^ ^-3.6 ^6
teleport @s[scores={AnimationProgress=100..}] ^ ^-4 ^7.333
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @s {Pose:{Head:[10.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=91..100}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 7
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProgress=100}] run playsound luigis_mansion:entity.bowser.land hostile @a[tag=same_room] ~ ~ ~ 3