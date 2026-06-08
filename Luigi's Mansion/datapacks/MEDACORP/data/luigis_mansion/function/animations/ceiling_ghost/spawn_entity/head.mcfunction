scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -1800
execute if entity @s[scores={AnimationProgress=1}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=2..3}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=4}] run scoreboard players remove @s AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=4}] AnimationProgress 0