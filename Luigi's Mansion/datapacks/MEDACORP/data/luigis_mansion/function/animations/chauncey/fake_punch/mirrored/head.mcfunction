scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^ ^ ~36 ~
teleport @s[scores={AnimationProgress=2}] ^ ^ ^ ~72 ~
teleport @s[scores={AnimationProgress=3}] ^ ^ ^ ~108 ~
teleport @s[scores={AnimationProgress=4}] ^ ^ ^ ~144 ~
teleport @s[scores={AnimationProgress=5}] ^ ^ ^ ~180 ~
teleport @s[scores={AnimationProgress=6}] ^ ^ ^ ~216 ~
teleport @s[scores={AnimationProgress=7}] ^ ^ ^ ~252 ~
teleport @s[scores={AnimationProgress=8}] ^ ^ ^ ~288 ~
teleport @s[scores={AnimationProgress=9}] ^ ^ ^ ~324 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0