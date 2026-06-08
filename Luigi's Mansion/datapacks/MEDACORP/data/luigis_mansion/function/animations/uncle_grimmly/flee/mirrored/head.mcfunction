teleport @s ^ ^ ^0.4
scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..2}] run scoreboard players remove @s AnimationRotationZ 50
execute if entity @s[scores={AnimationProgress=4..7}] run scoreboard players add @s AnimationRotationZ 50
execute if entity @s[scores={AnimationProgress=9..10}] run scoreboard players remove @s AnimationRotationZ 50
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0