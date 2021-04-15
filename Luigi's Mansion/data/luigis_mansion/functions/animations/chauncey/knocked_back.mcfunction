teleport @e[tag=this_chauncey_body,limit=1] ~ ~ ~ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-60.0f,0.0f,0.01f],LeftArm:[-60.0f,0.0f,0.01f],Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_chauncey_body,limit=1] {Pose:{Head:[30.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 9
execute if entity @s[scores={AnimationProg=11..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProg=21..30}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=31..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=11..15}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=16..20}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=21..25}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=26..30}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=31..40}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 4
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=11..15}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=16..20}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=21..25}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=26..30}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=31..40}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 4
execute store result score #temp Time run data get entity @e[tag=this_chauncey_body,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @e[tag=this_chauncey_body,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=31..40}] store result entity @e[tag=this_chauncey_body,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
scoreboard players set @s[scores={AnimationProg=40..}] AnimationProg 0