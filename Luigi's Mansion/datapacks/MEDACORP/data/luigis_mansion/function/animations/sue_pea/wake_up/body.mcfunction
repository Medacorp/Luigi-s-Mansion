scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 1800
execute if entity @s[scores={AnimationProgress=1..18}] run scoreboard players add @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=123..140}] run scoreboard players remove @s AnimationRotationX 50
scoreboard players set @s[scores={AnimationProgress=140..}] AnimationProgress 0