scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=91}] ^ ^-0.4 ^0.667
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=92}] ^ ^-0.8 ^1.333
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=93}] ^ ^-1.2 ^2
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=94}] ^ ^-1.6 ^2.667
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=95}] ^ ^-2 ^3.333
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=96}] ^ ^-2.4 ^4.667
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=97}] ^ ^-2.8 ^4.667
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=98}] ^ ^-3.2 ^5.333
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=99}] ^ ^-3.6 ^6
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=100..}] ^ ^-4 ^7.333
teleport @s[tag=flipped_gravity,scores={AnimationProgress=91}] ^ ^0.4 ^0.667
teleport @s[tag=flipped_gravity,scores={AnimationProgress=92}] ^ ^0.8 ^1.333
teleport @s[tag=flipped_gravity,scores={AnimationProgress=93}] ^ ^1.2 ^2
teleport @s[tag=flipped_gravity,scores={AnimationProgress=94}] ^ ^1.6 ^2.667
teleport @s[tag=flipped_gravity,scores={AnimationProgress=95}] ^ ^2 ^3.333
teleport @s[tag=flipped_gravity,scores={AnimationProgress=96}] ^ ^2.4 ^4.667
teleport @s[tag=flipped_gravity,scores={AnimationProgress=97}] ^ ^2.8 ^4.667
teleport @s[tag=flipped_gravity,scores={AnimationProgress=98}] ^ ^3.2 ^5.333
teleport @s[tag=flipped_gravity,scores={AnimationProgress=99}] ^ ^3.6 ^6
teleport @s[tag=flipped_gravity,scores={AnimationProgress=100..}] ^ ^4 ^7.333
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -70
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationX 40
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=91..100}] AnimationRotationX 20
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationX 50
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=21..30}] AnimationRotationX 50
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=41..50}] AnimationRotationX 40
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=51..60}] AnimationRotationX 10
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=91..100}] AnimationRotationX 30
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationY 52
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=51..100}] AnimationRotationY 10
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationY 14
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=91..100}] AnimationRotationY 14