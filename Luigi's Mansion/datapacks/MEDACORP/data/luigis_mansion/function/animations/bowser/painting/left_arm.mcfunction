scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=35}] ^ ^ ^0.1
teleport @s[scores={AnimationProgress=36}] ^ ^ ^0.2
teleport @s[scores={AnimationProgress=37..}] ^ ^ ^0.3
execute at @s run teleport @s ^-0.45 ^0.3 ^0.2
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,-7.0f,0.01f]}}