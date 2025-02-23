scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=35}] ^ ^ ^0.133
teleport @s[scores={AnimationProgress=36}] ^ ^ ^0.267
teleport @s[scores={AnimationProgress=37..}] ^ ^ ^0.4
execute at @s run teleport @s ^0.6 ^0.4 ^0.267
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,7.0f,0.01f]}}