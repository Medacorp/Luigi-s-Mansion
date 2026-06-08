scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 300
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0
execute if entity @s[scores={AnimationProgress=1}] run tag @e[tag=this_entity,limit=1] remove has_equipment
execute if entity @s[scores={AnimationProgress=15}] run tag @e[tag=this_entity,limit=1] add has_equipment