teleport @s ~ ~-0.45 ~ ~ ~
teleport @e[tag=this_e_gadd_body,limit=1] ~ ~-1 ~ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-20.0f,0.01f,0.0f],LeftArm:[70.0f,-0.01f,0.0f],Head:[-20.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_e_gadd_body,limit=1] {Pose:{RightArm:[70.0f,0.0f,0.01f],LeftArm:[70.0f,0.0f,0.01f],Head:[3.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.LeftArm[0] 1
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=6..15}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=16..20}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 2
execute store result score #temp Time run data get entity @s Pose.Head[0] 1
execute if entity @s[scores={AnimationProg=1..4}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=5..8}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=11..14}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=15..18}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
scoreboard players set @s[scores={AnimationProg=20}] AnimationProg 0