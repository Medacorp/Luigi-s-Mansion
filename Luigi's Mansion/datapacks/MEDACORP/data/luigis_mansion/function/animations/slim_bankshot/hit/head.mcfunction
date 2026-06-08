scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=1..8}] run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=11..18}] run scoreboard players remove @s AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=18..}] AnimationProgress 0