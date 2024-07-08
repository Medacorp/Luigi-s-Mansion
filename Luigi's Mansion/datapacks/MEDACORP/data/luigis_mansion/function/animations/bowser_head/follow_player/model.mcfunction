scoreboard players add @s AnimationProgress 1
data modify entity @s Pose.Head[0] set from entity @e[tag=this_entity,limit=1] data.rotation
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[30.0f,0.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 1