scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0
execute store result score @s AnimationRotationX run data get entity @e[tag=this_entity,limit=1] Rotation[1] 10