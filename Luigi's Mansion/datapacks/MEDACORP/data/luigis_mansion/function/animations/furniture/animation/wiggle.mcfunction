scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..7}] run scoreboard players add @s AnimationRotationZ 30
execute if entity @s[scores={AnimationProgress=10..23}] run scoreboard players remove @s AnimationRotationZ 30
execute if entity @s[scores={AnimationProgress=26..32}] run scoreboard players add @s AnimationRotationZ 30
scoreboard players set @s[scores={AnimationProgress=32}] AnimationProgress 0