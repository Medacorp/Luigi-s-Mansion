scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={ActionTime=21}] run teleport @e[tag=this_model] ~ ~0.1 ~
execute if entity @s[scores={ActionTime=22}] run teleport @e[tag=this_model] ~ ~0.2 ~
execute if entity @s[scores={ActionTime=23}] run teleport @e[tag=this_model] ~ ~0.3 ~
execute if entity @s[scores={ActionTime=24}] run teleport @e[tag=this_model] ~ ~0.4 ~
execute if entity @s[scores={ActionTime=25}] run teleport @e[tag=this_model] ~ ~0.5 ~
execute if entity @s[scores={ActionTime=26}] run teleport @e[tag=this_model] ~ ~0.6 ~
execute if entity @s[scores={ActionTime=27}] run teleport @e[tag=this_model] ~ ~0.7 ~
execute if entity @s[scores={ActionTime=28}] run teleport @e[tag=this_model] ~ ~0.8 ~
execute if entity @s[scores={ActionTime=29}] run teleport @e[tag=this_model] ~ ~0.9 ~
execute if entity @s[scores={ActionTime=30}] run teleport @e[tag=this_model] ~ ~1 ~
execute if entity @s[scores={ActionTime=31}] run teleport @e[tag=this_model] ~ ~1.1 ~
execute if entity @s[scores={ActionTime=32}] run teleport @e[tag=this_model] ~ ~1.2 ~
execute if entity @s[scores={ActionTime=33}] run teleport @e[tag=this_model] ~ ~1.3 ~
execute if entity @s[scores={ActionTime=34}] run teleport @e[tag=this_model] ~ ~1.4 ~
execute if entity @s[scores={ActionTime=35}] run teleport @e[tag=this_model] ~ ~1.5 ~
execute if entity @s[scores={ActionTime=36}] run teleport @e[tag=this_model] ~ ~1.6 ~
execute if entity @s[scores={ActionTime=37}] run teleport @e[tag=this_model] ~ ~1.7 ~
execute if entity @s[scores={ActionTime=38}] run teleport @e[tag=this_model] ~ ~1.8 ~
execute if entity @s[scores={ActionTime=39}] run teleport @e[tag=this_model] ~ ~1.9 ~
execute if entity @s[scores={ActionTime=40..}] run teleport @e[tag=this_model] ~ ~2 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{RightArm:[-90.0f,0.0f,0.0f],LeftArm:[-90.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f]}}
execute if entity @s[scores={AnimationProgress=1}] as @e[tag=this_model] run data merge entity @s {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 9
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 9
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=120..}] AnimationProgress 0