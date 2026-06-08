scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 900
execute if entity @s[scores={AnimationProgress=1}] run scoreboard players add @s AnimationRotationZ 100
execute if entity @s[scores={AnimationProgress=2..3}] run scoreboard players remove @s AnimationRotationZ 100
execute if entity @s[scores={AnimationProgress=4}] run scoreboard players add @s AnimationRotationZ 100
scoreboard players set @s[scores={AnimationProgress=4..}] AnimationProgress 0
execute store result score @s AnimationRotationY run data get entity @e[tag=this_entity,limit=1] Rotation[1] -10