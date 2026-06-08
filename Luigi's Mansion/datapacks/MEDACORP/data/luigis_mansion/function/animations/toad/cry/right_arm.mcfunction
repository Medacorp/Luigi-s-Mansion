scoreboard players add @s AnimationProgress 1
teleport @s ^0.02 ^-0.25 ^0.09
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -800
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -320
scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationX 5
scoreboard players add @s[scores={AnimationProgress=6..10}] AnimationRotationX 5
scoreboard players remove @s[scores={AnimationProgress=11..15}] AnimationRotationX 5
scoreboard players add @s[scores={AnimationProgress=16..20}] AnimationRotationX 5
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0