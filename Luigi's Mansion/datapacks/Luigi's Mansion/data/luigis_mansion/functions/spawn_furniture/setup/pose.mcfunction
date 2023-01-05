execute if data storage luigis_mansion:data furniture.pose run data modify entity @e[tag=this_entity,limit=1] Pose.Head set from storage luigis_mansion:data furniture.pose
data modify entity @e[tag=this_entity,limit=1] Pose.Head[1] set value 0.01f
execute as @e[tag=this_entity,limit=1] run data modify entity @s Rotation[1] set from entity @s Pose.Head[0]