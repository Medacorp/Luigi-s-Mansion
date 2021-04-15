scoreboard players add @s AnimationProg 1
execute if entity @s[scores={ActionTime=21..}] run teleport @e[tag=this_bogmire_body,limit=1] ~ ~ ~
execute if entity @s[scores={ActionTime=20}] run teleport @e[tag=this_bogmire_body,limit=1] ~ ~0.1 ~
execute if entity @s[scores={ActionTime=19}] run teleport @e[tag=this_bogmire_body,limit=1] ~ ~0.2 ~
execute if entity @s[scores={ActionTime=18}] run teleport @e[tag=this_bogmire_body,limit=1] ~ ~0.3 ~
execute if entity @s[scores={ActionTime=17}] run teleport @e[tag=this_bogmire_body,limit=1] ~ ~0.4 ~
execute if entity @s[scores={ActionTime=16}] run teleport @e[tag=this_bogmire_body,limit=1] ~ ~0.5 ~
execute if entity @s[scores={ActionTime=15}] run teleport @e[tag=this_bogmire_body,limit=1] ~ ~0.6 ~
execute if entity @s[scores={ActionTime=14}] run teleport @e[tag=this_bogmire_body,limit=1] ~ ~0.7 ~
execute if entity @s[scores={ActionTime=13}] run teleport @e[tag=this_bogmire_body,limit=1] ~ ~0.8 ~
execute if entity @s[scores={ActionTime=12}] run teleport @e[tag=this_bogmire_body,limit=1] ~ ~0.9 ~
execute if entity @s[scores={ActionTime=11}] run teleport @e[tag=this_bogmire_body,limit=1] ~ ~1 ~
execute if entity @s[scores={ActionTime=10}] run teleport @e[tag=this_bogmire_body,limit=1] ~ ~1.1 ~
execute if entity @s[scores={ActionTime=9}] run teleport @e[tag=this_bogmire_body,limit=1] ~ ~1.2 ~
execute if entity @s[scores={ActionTime=8}] run teleport @e[tag=this_bogmire_body,limit=1] ~ ~1.3 ~
execute if entity @s[scores={ActionTime=7}] run teleport @e[tag=this_bogmire_body,limit=1] ~ ~1.4 ~
execute if entity @s[scores={ActionTime=6}] run teleport @e[tag=this_bogmire_body,limit=1] ~ ~1.5 ~
execute if entity @s[scores={ActionTime=5}] run teleport @e[tag=this_bogmire_body,limit=1] ~ ~1.6 ~
execute if entity @s[scores={ActionTime=4}] run teleport @e[tag=this_bogmire_body,limit=1] ~ ~1.7 ~
execute if entity @s[scores={ActionTime=3}] run teleport @e[tag=this_bogmire_body,limit=1] ~ ~1.8 ~
execute if entity @s[scores={ActionTime=2}] run teleport @e[tag=this_bogmire_body,limit=1] ~ ~1.9 ~
execute if entity @s[scores={ActionTime=1}] run teleport @e[tag=this_bogmire_body,limit=1] ~ ~2 ~
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[0.0f,90.0f,0.01f],LeftArm:[0.0f,-90.0f,0.01f],Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_bogmire_body,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=21..30}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 9
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=21..30}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 9
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=30..}] AnimationProg 0