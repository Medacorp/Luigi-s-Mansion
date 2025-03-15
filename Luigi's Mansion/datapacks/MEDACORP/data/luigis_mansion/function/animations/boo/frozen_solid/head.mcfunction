scoreboard players add @s AnimationProgress 1
data modify entity @s[scores={AnimationProgress=1}] Pose.Head[1] set value 0.0f
data modify entity @s[scores={AnimationProgress=1}] Pose.Head[2] set value 0.0f
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.frozen
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0
data modify entity @s Pose.Head[0] set from entity @e[tag=this_entity,limit=1] Rotation[1]