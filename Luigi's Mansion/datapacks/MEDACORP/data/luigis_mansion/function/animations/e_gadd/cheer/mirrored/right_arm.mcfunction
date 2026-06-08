scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -400
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 100
execute if entity @s[scores={AnimationProgress=1..3}] run scoreboard players remove @s AnimationRotationZ 2
execute if entity @s[scores={AnimationProgress=4..6}] run scoreboard players add @s AnimationRotationZ 2
scoreboard players set @s[scores={AnimationProgress=8}] AnimationProgress 0