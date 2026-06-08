scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 125
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -50
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players add @s AnimationRotationX 2
execute if entity @s[scores={AnimationProgress=11..22}] run scoreboard players remove @s AnimationRotationX 1
execute if entity @s[scores={AnimationProgress=23..24}] run scoreboard players add @s AnimationRotationX 2
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0