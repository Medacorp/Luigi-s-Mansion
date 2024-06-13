scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.01f,0.0f]}}
data modify entity @s[scores={AnimationProgress=1}] Pose.Head[0] set from entity @e[tag=this_entity,limit=1] data.rotation
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if score #temp Time matches 32..90 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if score #temp Time matches -90..28 store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if score #temp Time matches 28..32 run tag @e[tag=this_entity,limit=1] add can_reattach
scoreboard players reset #temp Time