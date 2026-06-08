scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1100
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 900
execute if entity @s[scores={AnimationProgress=1..2}] run scoreboard players remove @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=4..7}] run scoreboard players add @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=9..10}] run scoreboard players remove @s AnimationRotationX 100
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0
execute store result score @s AnimationRotationY run data get entity @e[tag=this_entity,limit=1] Rotation[1] -10