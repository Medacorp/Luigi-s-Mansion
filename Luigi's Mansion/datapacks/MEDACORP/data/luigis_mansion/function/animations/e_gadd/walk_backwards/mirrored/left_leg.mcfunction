scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -150
execute if entity @s[scores={AnimationProgress=1..6}] run scoreboard players add @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=7..18}] run scoreboard players remove @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=19..24}] run scoreboard players add @s AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0