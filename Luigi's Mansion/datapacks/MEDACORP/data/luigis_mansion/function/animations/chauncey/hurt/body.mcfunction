scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=8..}] AnimationProgress 0
tag @e[tag=this_entity,limit=1] remove has_equipment