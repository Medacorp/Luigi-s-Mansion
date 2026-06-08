scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=1}] ^ ^-0.1 ^-0.1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=2}] ^ ^-0.2 ^-0.2
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=3}] ^ ^-0.2 ^-0.2
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=4}] ^ ^-0.3 ^-0.1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=5}] ^ ^-0.4 ^
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=6}] ^ ^-0.3 ^0.1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=7}] ^ ^-0.2 ^0.2
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=8}] ^ ^-0.2 ^0.2
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=9}] ^ ^-0.1 ^0.1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=11}] ^ ^-0.1 ^-0.1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=12}] ^ ^-0.2 ^-0.2
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=13}] ^ ^-0.2 ^-0.2
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=14}] ^ ^-0.3 ^-0.1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=15}] ^ ^-0.4 ^
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=16}] ^ ^-0.3 ^0.1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=17}] ^ ^-0.2 ^0.2
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=18}] ^ ^-0.2 ^0.2
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=19}] ^ ^-0.1 ^0.1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=21}] ^ ^-0.1 ^-0.1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=22}] ^ ^-0.2 ^-0.2
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=23}] ^ ^-0.2 ^-0.2
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=24}] ^ ^-0.3 ^-0.1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=25}] ^ ^-0.45 ^
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=26}] ^ ^-0.4 ^0.1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=27}] ^ ^-0.35 ^0.2
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=28}] ^ ^-0.4 ^0.2
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=29}] ^ ^-0.35 ^0.1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=30}] ^ ^-0.3 ^
teleport @s[tag=flipped_gravity,scores={AnimationProgress=1}] ^ ^0.1 ^-0.1
teleport @s[tag=flipped_gravity,scores={AnimationProgress=2}] ^ ^0.2 ^-0.2
teleport @s[tag=flipped_gravity,scores={AnimationProgress=3}] ^ ^0.2 ^-0.2
teleport @s[tag=flipped_gravity,scores={AnimationProgress=4}] ^ ^0.3 ^-0.1
teleport @s[tag=flipped_gravity,scores={AnimationProgress=5}] ^ ^0.4 ^
teleport @s[tag=flipped_gravity,scores={AnimationProgress=6}] ^ ^0.3 ^0.1
teleport @s[tag=flipped_gravity,scores={AnimationProgress=7}] ^ ^0.2 ^0.2
teleport @s[tag=flipped_gravity,scores={AnimationProgress=8}] ^ ^0.2 ^0.2
teleport @s[tag=flipped_gravity,scores={AnimationProgress=9}] ^ ^0.1 ^0.1
teleport @s[tag=flipped_gravity,scores={AnimationProgress=11}] ^ ^0.1 ^-0.1
teleport @s[tag=flipped_gravity,scores={AnimationProgress=12}] ^ ^0.2 ^-0.2
teleport @s[tag=flipped_gravity,scores={AnimationProgress=13}] ^ ^0.2 ^-0.2
teleport @s[tag=flipped_gravity,scores={AnimationProgress=14}] ^ ^0.3 ^-0.1
teleport @s[tag=flipped_gravity,scores={AnimationProgress=15}] ^ ^0.4 ^
teleport @s[tag=flipped_gravity,scores={AnimationProgress=16}] ^ ^0.3 ^0.1
teleport @s[tag=flipped_gravity,scores={AnimationProgress=17}] ^ ^0.2 ^0.2
teleport @s[tag=flipped_gravity,scores={AnimationProgress=18}] ^ ^0.2 ^0.2
teleport @s[tag=flipped_gravity,scores={AnimationProgress=19}] ^ ^0.1 ^0.1
teleport @s[tag=flipped_gravity,scores={AnimationProgress=21}] ^ ^0.1 ^-0.1
teleport @s[tag=flipped_gravity,scores={AnimationProgress=22}] ^ ^0.2 ^-0.2
teleport @s[tag=flipped_gravity,scores={AnimationProgress=23}] ^ ^0.2 ^-0.2
teleport @s[tag=flipped_gravity,scores={AnimationProgress=24}] ^ ^0.3 ^-0.1
teleport @s[tag=flipped_gravity,scores={AnimationProgress=25}] ^ ^0.45 ^
teleport @s[tag=flipped_gravity,scores={AnimationProgress=26}] ^ ^0.4 ^0.1
teleport @s[tag=flipped_gravity,scores={AnimationProgress=27}] ^ ^0.35 ^0.2
teleport @s[tag=flipped_gravity,scores={AnimationProgress=28}] ^ ^0.4 ^0.2
teleport @s[tag=flipped_gravity,scores={AnimationProgress=29}] ^ ^0.35 ^0.1
teleport @s[tag=flipped_gravity,scores={AnimationProgress=30}] ^ ^0.3 ^
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 100
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
scoreboard players add @s[scores={AnimationProgress=11..20}] AnimationRotationX 80
scoreboard players remove @s AnimationRotationX 360
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0