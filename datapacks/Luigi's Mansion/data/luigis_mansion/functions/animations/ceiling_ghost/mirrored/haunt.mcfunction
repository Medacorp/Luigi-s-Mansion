scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[0.0f,0.01f,0.0f],LeftArm:[0.0f,0.01f,0.0f],Head:[0.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[2]
execute if entity @s[scores={AnimationProg=1..4}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players remove #temp Time 7
execute if entity @s[scores={AnimationProg=9..16}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players add #temp Time 7
execute if entity @s[scores={AnimationProg=21..24}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players remove #temp Time 7
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=5..6}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=7..8}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=17..18}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProg=19..20}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 10
execute store result score #temp Time run data get entity @s Pose.LeftArm[2]
execute if entity @s[scores={AnimationProg=1..4}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players remove #temp Time 7
execute if entity @s[scores={AnimationProg=9..16}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players add #temp Time 7
execute if entity @s[scores={AnimationProg=21..24}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players remove #temp Time 7
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=5..6}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProg=7..8}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProg=17..18}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=19..20}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=5..6}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=7..8}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=17..18}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=19..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=24}] AnimationProg 0