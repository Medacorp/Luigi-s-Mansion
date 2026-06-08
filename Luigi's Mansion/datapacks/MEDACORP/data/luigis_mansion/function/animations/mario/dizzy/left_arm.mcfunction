scoreboard players add @s AnimationProgress 1
teleport @s ~ ~-0.63 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -100
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -00
scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationZ 2
scoreboard players add @s[scores={AnimationProgress=11..20}] AnimationRotationZ 2
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0