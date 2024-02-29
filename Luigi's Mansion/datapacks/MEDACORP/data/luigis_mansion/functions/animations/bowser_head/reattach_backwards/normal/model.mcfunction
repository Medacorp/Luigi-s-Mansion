scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data modify entity @s[scores={AnimationProgress=1}] Pose.Head[0] set from entity @e[tag=this_entity,limit=1] data.rotation
data modify entity @s ArmorItems[3].tag.CustomModelData set value 88
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if score #temp Time matches -68..90 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if score #temp Time matches -90..-72 store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute store result score #temp2 Time run data get entity @s Pose.Head[1]
execute if score #temp2 Time matches -176..0 store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp2 Time 4
execute if score #temp2 Time matches 0..176 store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp2 Time 4
execute if score #temp Time matches -71..-69 unless score #temp2 Time matches -176..176 run tag @e[tag=this_entity,limit=1] add can_reattach
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time