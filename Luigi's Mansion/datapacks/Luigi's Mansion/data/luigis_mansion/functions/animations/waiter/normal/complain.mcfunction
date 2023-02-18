scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{RightArm:[-180.0f,0.0f,0.0f],LeftArm:[-180.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=1..4}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=5..12}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=13..16}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get entity @s Pose.RightArm[2]
execute if entity @s[scores={AnimationProgress=1..4}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=5..12}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=13..16}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get entity @s Pose.LeftArm[2]
execute if entity @s[scores={AnimationProgress=1..4}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=5..12}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=13..16}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players remove #temp Time 1
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=16}] AnimationProgress 0