scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=1..5}] AnimationRotationZ 20
scoreboard players remove @s[scores={AnimationProgress=6..15}] AnimationRotationZ 20
scoreboard players add @s[scores={AnimationProgress=16..20}] AnimationRotationZ 20
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0
execute store result score @s AnimationRotationX run data get entity @e[tag=this_entity,limit=1] Rotation[1] 10