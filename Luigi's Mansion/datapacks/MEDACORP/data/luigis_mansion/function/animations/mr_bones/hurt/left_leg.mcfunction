scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..3}] run scoreboard players remove @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=4..9}] run scoreboard players add @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=10..12}] run scoreboard players remove @s AnimationRotationZ 20
scoreboard players set @s[scores={AnimationProgress=9}] AnimationProgress 0