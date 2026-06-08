scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 300
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0
tag @e[tag=this_entity,limit=1] remove has_equipment