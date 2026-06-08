scoreboard players add @s AnimationProgress 1
teleport @s ^ ^ ^0.1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 800
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -100
execute if entity @s[scores={AnimationProgress=1..2}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=4..7}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=9..10}] run scoreboard players add @s AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0