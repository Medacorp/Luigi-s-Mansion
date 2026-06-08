scoreboard players add @s AnimationProgress 1
teleport @s ^ ^-4 ^2.667
execute at @s positioned ^ ^0.667 ^0.667 run teleport @s ^ ^0.933 ^-0.8
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 800
execute if entity @s[scores={AnimationProgress=1}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=2}] run scoreboard players add @s AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=2}] AnimationProgress 0