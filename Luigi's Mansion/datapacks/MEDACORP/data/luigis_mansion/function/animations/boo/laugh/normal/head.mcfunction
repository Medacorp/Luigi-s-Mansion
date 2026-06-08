scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players remove @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=6..15}] run scoreboard players add @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=16..20}] run scoreboard players remove @s AnimationRotationZ 20
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0
execute store result score @s AnimationRotationX run data get entity @e[tag=this_entity,limit=1] Rotation[1] 10