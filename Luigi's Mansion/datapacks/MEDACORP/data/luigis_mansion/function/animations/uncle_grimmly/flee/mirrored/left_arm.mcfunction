teleport @s ^ ^ ^0.4
scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1600
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players add @s AnimationRotationX 280
execute if entity @s[scores={AnimationProgress=6..10}] run scoreboard players remove @s AnimationRotationX 280
execute if entity @s[scores={AnimationProgress=6..7}] run scoreboard players remove @s AnimationRotationY 200
execute if entity @s[scores={AnimationProgress=9..10}] run scoreboard players add @s AnimationRotationY 200
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0