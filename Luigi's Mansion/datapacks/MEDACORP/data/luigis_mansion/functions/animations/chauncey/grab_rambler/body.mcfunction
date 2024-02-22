scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[30.0f,0.0f,0.01f]}}
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0
execute if entity @s[scores={AnimationProgress=1}] run tag @e[tag=this_entity,limit=1] remove has_equipment
execute if entity @s[scores={AnimationProgress=15}] run tag @e[tag=this_entity,limit=1] add has_equipment