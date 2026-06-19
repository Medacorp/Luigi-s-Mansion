scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=1}] ^ ^-4 ^2.667
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=2}] ^ ^-3.667 ^2.533
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=3}] ^ ^-3.467 ^2.4
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=4}] ^ ^-3.267 ^2.267
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=5}] ^ ^-3.067 ^2.133
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=6}] ^ ^-3 ^2
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=7}] ^ ^-2.8 ^1.867
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=8}] ^ ^-2.6 ^1.733
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=9}] ^ ^-2.4 ^1.6
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=10}] ^ ^-2.2 ^1.467
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=11}] ^ ^-2 ^1.333
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=12}] ^ ^-1.8 ^1.2
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=13}] ^ ^-1.6 ^1.067
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=14}] ^ ^-1.4 ^0.933
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=15}] ^ ^-1.2 ^0.8
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=16}] ^ ^-1 ^0.667
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=17}] ^ ^-0.8 ^0.533
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=18}] ^ ^-0.6 ^0.4
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=49}] ^ ^-0.4 ^0.267
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=20}] ^ ^-0.2 ^0.133
teleport @s[tag=flipped_gravity,scores={AnimationProgress=1}] ^ ^4 ^2.667
teleport @s[tag=flipped_gravity,scores={AnimationProgress=2}] ^ ^3.667 ^2.533
teleport @s[tag=flipped_gravity,scores={AnimationProgress=3}] ^ ^3.467 ^2.4
teleport @s[tag=flipped_gravity,scores={AnimationProgress=4}] ^ ^3.267 ^2.267
teleport @s[tag=flipped_gravity,scores={AnimationProgress=5}] ^ ^3.067 ^2.133
teleport @s[tag=flipped_gravity,scores={AnimationProgress=6}] ^ ^3 ^2
teleport @s[tag=flipped_gravity,scores={AnimationProgress=7}] ^ ^2.8 ^1.867
teleport @s[tag=flipped_gravity,scores={AnimationProgress=8}] ^ ^2.6 ^1.733
teleport @s[tag=flipped_gravity,scores={AnimationProgress=9}] ^ ^2.4 ^1.6
teleport @s[tag=flipped_gravity,scores={AnimationProgress=10}] ^ ^2.2 ^1.467
teleport @s[tag=flipped_gravity,scores={AnimationProgress=11}] ^ ^2 ^1.333
teleport @s[tag=flipped_gravity,scores={AnimationProgress=12}] ^ ^1.8 ^1.2
teleport @s[tag=flipped_gravity,scores={AnimationProgress=13}] ^ ^1.6 ^1.067
teleport @s[tag=flipped_gravity,scores={AnimationProgress=14}] ^ ^1.4 ^0.933
teleport @s[tag=flipped_gravity,scores={AnimationProgress=15}] ^ ^1.2 ^0.8
teleport @s[tag=flipped_gravity,scores={AnimationProgress=16}] ^ ^1 ^0.667
teleport @s[tag=flipped_gravity,scores={AnimationProgress=17}] ^ ^0.8 ^0.533
teleport @s[tag=flipped_gravity,scores={AnimationProgress=18}] ^ ^0.6 ^0.4
teleport @s[tag=flipped_gravity,scores={AnimationProgress=49}] ^ ^0.4 ^0.267
teleport @s[tag=flipped_gravity,scores={AnimationProgress=20}] ^ ^0.2 ^0.133
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 900
scoreboard players remove @s[scores={AnimationProgress=1..20}] AnimationRotationX 55
scoreboard players add @s[scores={AnimationProgress=51..60}] AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=1}] run data modify entity @s item merge from entity @s item.components."minecraft:custom_data".model_data.open_mouth
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0