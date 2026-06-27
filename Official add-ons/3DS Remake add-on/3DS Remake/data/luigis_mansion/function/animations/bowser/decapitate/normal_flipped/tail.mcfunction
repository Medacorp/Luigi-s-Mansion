scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=51}] ^ ^0.133 ^
teleport @s[scores={AnimationProgress=52}] ^ ^0.267 ^
teleport @s[scores={AnimationProgress=53}] ^ ^0.4 ^
teleport @s[scores={AnimationProgress=54}] ^ ^0.533 ^
teleport @s[scores={AnimationProgress=55}] ^ ^0.667 ^
teleport @s[scores={AnimationProgress=56}] ^ ^0.8 ^
teleport @s[scores={AnimationProgress=57}] ^ ^0.933 ^
teleport @s[scores={AnimationProgress=58}] ^ ^1.067 ^
teleport @s[scores={AnimationProgress=59}] ^ ^1.2 ^
teleport @s[scores={AnimationProgress=60}] ^ ^1.333 ^
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -200
scoreboard players remove @s[scores={AnimationProgress=21..30}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=31..40}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=51..60}] AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0