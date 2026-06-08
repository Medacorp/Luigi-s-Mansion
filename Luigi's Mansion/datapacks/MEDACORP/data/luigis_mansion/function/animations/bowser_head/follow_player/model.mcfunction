scoreboard players add @s AnimationProgress 1
execute store result score @s AnimationRotationX run data get entity @e[tag=this_entity,limit=1] data.rotation 10
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 300
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 1