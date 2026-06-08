scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^0.1 ^0.1
teleport @s[scores={AnimationProgress=2}] ^ ^0.2 ^0.2
teleport @s[scores={AnimationProgress=3}] ^ ^0.2 ^0.2
teleport @s[scores={AnimationProgress=4}] ^ ^0.3 ^0.1
teleport @s[scores={AnimationProgress=5}] ^ ^0.4 ^
teleport @s[scores={AnimationProgress=6}] ^ ^0.3 ^-0.1
teleport @s[scores={AnimationProgress=7}] ^ ^0.2 ^-0.2
teleport @s[scores={AnimationProgress=8}] ^ ^0.2 ^-0.2
teleport @s[scores={AnimationProgress=9}] ^ ^0.1 ^-0.1
teleport @s[scores={AnimationProgress=11}] ^ ^0.1 ^0.1
teleport @s[scores={AnimationProgress=12}] ^ ^0.2 ^0.2
teleport @s[scores={AnimationProgress=13}] ^ ^0.2 ^0.2
teleport @s[scores={AnimationProgress=14}] ^ ^0.3 ^0.1
teleport @s[scores={AnimationProgress=15}] ^ ^0.4 ^
teleport @s[scores={AnimationProgress=16}] ^ ^0.3 ^-0.1
teleport @s[scores={AnimationProgress=17}] ^ ^0.2 ^-0.2
teleport @s[scores={AnimationProgress=18}] ^ ^0.2 ^-0.2
teleport @s[scores={AnimationProgress=19}] ^ ^0.1 ^-0.1
teleport @s[scores={AnimationProgress=21}] ^ ^0.1 ^0.1
teleport @s[scores={AnimationProgress=22}] ^ ^0.2 ^0.2
teleport @s[scores={AnimationProgress=23}] ^ ^0.2 ^0.2
teleport @s[scores={AnimationProgress=24}] ^ ^0.3 ^0.1
teleport @s[scores={AnimationProgress=25}] ^ ^0.35 ^
teleport @s[scores={AnimationProgress=26}] ^ ^0.2 ^-0.1
teleport @s[scores={AnimationProgress=27}] ^ ^0.05 ^-0.2
teleport @s[scores={AnimationProgress=28}] ^ ^ ^-0.2
teleport @s[scores={AnimationProgress=29}] ^ ^-0.15 ^-0.1
teleport @s[scores={AnimationProgress=30}] ^ ^-0.3 ^
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -150
execute if entity @s[scores={AnimationProgress=21..30}] run scoreboard players remove @s AnimationRotationX 90
execute run scoreboard players remove @s AnimationRotationX 360
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0