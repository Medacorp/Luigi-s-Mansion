scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.0f]}}
data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.frozen
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0
data modify entity @s Pose.Head[0] set from entity @e[tag=this_entity,limit=1] Rotation[1]