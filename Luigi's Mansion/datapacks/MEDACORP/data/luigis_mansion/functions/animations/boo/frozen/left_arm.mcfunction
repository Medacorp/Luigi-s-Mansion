scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-20.0f,0.0f,-90.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2] 10
execute if entity @s[scores={AnimationProgress=1..4}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 25
execute if entity @s[scores={AnimationProgress=5..12}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 25
execute if entity @s[scores={AnimationProgress=13..16}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 25
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0
data modify entity @s Pose.Head[1] set from entity @e[tag=this_entity,limit=1] Rotation[1]