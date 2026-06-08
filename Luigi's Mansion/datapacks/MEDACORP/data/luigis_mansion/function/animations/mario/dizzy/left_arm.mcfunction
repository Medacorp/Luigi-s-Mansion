scoreboard players add @s AnimationProgress 1
teleport @s ~ ~-0.63 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -100
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -00
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players remove @s AnimationRotationZ 2
execute if entity @s[scores={AnimationProgress=11..20}] run scoreboard players add @s AnimationRotationZ 2
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0