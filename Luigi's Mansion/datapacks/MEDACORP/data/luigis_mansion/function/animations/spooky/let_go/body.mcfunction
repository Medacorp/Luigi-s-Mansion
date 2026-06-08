scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 900
execute if entity @s[scores={AnimationProgress=1..39}] run scoreboard players remove @s AnimationRotationX 180
execute if entity @s[scores={AnimationProgress=40}] run scoreboard players remove @s AnimationRotationX 280
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0