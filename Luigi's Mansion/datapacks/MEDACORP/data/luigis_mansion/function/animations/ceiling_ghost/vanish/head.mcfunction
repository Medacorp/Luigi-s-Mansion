scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=5}] ^ ^0.3 ^0.14
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=6}] ^ ^0.6 ^0.28
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=7}] ^ ^0.9 ^0.42
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=8}] ^ ^1.2 ^0.56
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=9}] ^ ^1.5 ^0.7
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=10}] ^ ^1.8 ^0.84
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=11}] ^ ^2.1 ^0.98
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=12}] ^ ^2.4 ^1.12
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=13}] ^ ^2.7 ^1.26
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=14}] ^ ^3 ^1.4
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=15}] ^ ^3.3 ^1.54
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=16}] ^ ^3.6 ^1.68
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=17}] ^ ^3.9 ^1.82
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=18}] ^ ^4.2 ^1.96
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=19}] ^ ^4.5 ^2.1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=20}] ^ ^4.8 ^2.24
teleport @s[tag=flipped_gravity,scores={AnimationProgress=5}] ^ ^-0.3 ^0.14
teleport @s[tag=flipped_gravity,scores={AnimationProgress=6}] ^ ^-0.6 ^0.28
teleport @s[tag=flipped_gravity,scores={AnimationProgress=7}] ^ ^-0.9 ^0.42
teleport @s[tag=flipped_gravity,scores={AnimationProgress=8}] ^ ^-1.2 ^0.56
teleport @s[tag=flipped_gravity,scores={AnimationProgress=9}] ^ ^-1.5 ^0.7
teleport @s[tag=flipped_gravity,scores={AnimationProgress=10}] ^ ^-1.8 ^0.84
teleport @s[tag=flipped_gravity,scores={AnimationProgress=11}] ^ ^-2.1 ^0.98
teleport @s[tag=flipped_gravity,scores={AnimationProgress=12}] ^ ^-2.4 ^1.12
teleport @s[tag=flipped_gravity,scores={AnimationProgress=13}] ^ ^-2.7 ^1.26
teleport @s[tag=flipped_gravity,scores={AnimationProgress=14}] ^ ^-3 ^1.4
teleport @s[tag=flipped_gravity,scores={AnimationProgress=15}] ^ ^-3.3 ^1.54
teleport @s[tag=flipped_gravity,scores={AnimationProgress=16}] ^ ^-3.6 ^1.68
teleport @s[tag=flipped_gravity,scores={AnimationProgress=17}] ^ ^-3.9 ^1.82
teleport @s[tag=flipped_gravity,scores={AnimationProgress=18}] ^ ^-4.2 ^1.96
teleport @s[tag=flipped_gravity,scores={AnimationProgress=19}] ^ ^-4.5 ^2.1
teleport @s[tag=flipped_gravity,scores={AnimationProgress=20}] ^ ^-4.8 ^2.24
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -1800
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
scoreboard players remove @s[scores={AnimationProgress=1..4}] AnimationRotationX 50
scoreboard players add @s[scores={AnimationProgress=8..17}] AnimationRotationX 110
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0