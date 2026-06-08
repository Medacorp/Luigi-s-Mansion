scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] run scoreboard players remove @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=2..3}] run scoreboard players add @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=4}] run scoreboard players remove @s AnimationRotationZ 20
scoreboard players set @s[scores={AnimationProgress=4..}] AnimationProgress 0