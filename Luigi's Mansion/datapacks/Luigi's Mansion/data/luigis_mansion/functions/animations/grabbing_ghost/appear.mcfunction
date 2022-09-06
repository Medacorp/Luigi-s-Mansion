scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[60.0f,0.0f,0.0f],LeftArm:[60.0f,0.0f,0.0f],Head:[60.0f,0.01f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=1..12}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 15
execute if entity @s[scores={AnimationProg=13..16}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=1..12}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 15
execute if entity @s[scores={AnimationProg=13..16}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..14}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=15..16}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=20}] AnimationProg 0