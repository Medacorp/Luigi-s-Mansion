scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,-90.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=6..15}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=16..20}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 5
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0
data modify entity @s Pose.Head[1] set from entity @e[tag=this_entity,limit=1] Rotation[1]