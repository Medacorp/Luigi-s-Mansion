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
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -70
execute if entity @s[scores={AnimationProgress=1..10}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=91..100}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=1..10}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=21..30}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=41..50}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=51..60}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=91..100}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=1..10}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 52
execute if entity @s[scores={AnimationProgress=51..100}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=1..10}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 14
execute if entity @s[scores={AnimationProgress=91..100}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 14