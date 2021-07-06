scoreboard players add @s AnimationProg 1
teleport @s[scores={AnimationProg=1..20}] ^ ^-0.03 ^0.02
teleport @s[scores={AnimationProg=81..100}] ^ ^0.03 ^-0.02
execute at @s run teleport @e[tag=this_model,tag=biff_atlas_body,limit=1] ~ ~ ~ ~ ~
execute at @s run teleport @e[tag=this_model,tag=biff_atlas_right_arm,limit=1] ^-0.46 ^-0.2 ^ ~ ~
execute at @s run teleport @e[tag=this_model,tag=biff_atlas_left_arm,limit=1] ^0.46 ^-0.2 ^ ~ ~
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.01f,0.0f,0.0f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=biff_atlas_body,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=biff_atlas_right_arm,limit=1] {Pose:{Head:[-90.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=biff_atlas_left_arm,limit=1] {Pose:{Head:[-90.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProg=1..20}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 8
execute if entity @s[scores={AnimationProg=21..40}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=41..50}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=51..60}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=61..80}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 6
execute if entity @s[scores={AnimationProg=81..100}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 8
execute store result score #temp Time run data get entity @e[tag=this_model,tag=biff_atlas_right_arm,limit=1] Pose.Head[0] 1
execute if entity @s[scores={AnimationProg=1..20}] store result entity @e[tag=this_model,tag=biff_atlas_right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProg=21..40}] store result entity @e[tag=this_model,tag=biff_atlas_right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=41..50}] store result entity @e[tag=this_model,tag=biff_atlas_right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=51..60}] store result entity @e[tag=this_model,tag=biff_atlas_right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=61..80}] store result entity @e[tag=this_model,tag=biff_atlas_right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProg=81..100}] store result entity @e[tag=this_model,tag=biff_atlas_right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
execute store result score #temp Time run data get entity @e[tag=this_model,tag=biff_atlas_left_arm,limit=1] Pose.Head[0] 1
execute if entity @s[scores={AnimationProg=1..20}] store result entity @e[tag=this_model,tag=biff_atlas_left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProg=21..40}] store result entity @e[tag=this_model,tag=biff_atlas_left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=41..50}] store result entity @e[tag=this_model,tag=biff_atlas_left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=51..60}] store result entity @e[tag=this_model,tag=biff_atlas_left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=61..80}] store result entity @e[tag=this_model,tag=biff_atlas_left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProg=81..100}] store result entity @e[tag=this_model,tag=biff_atlas_left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
execute store result score #temp Time run data get entity @e[tag=this_model,tag=biff_atlas_body,limit=1] Pose.Head[0] 10
execute if entity @s[scores={AnimationProg=1..20}] store result entity @e[tag=this_model,tag=biff_atlas_body,limit=1] Pose.Head[0] float 0.1 run scoreboard players add #temp Time 16
execute if entity @s[scores={AnimationProg=81..100}] store result entity @e[tag=this_model,tag=biff_atlas_body,limit=1] Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 16
scoreboard players set @s[scores={AnimationProg=100..}] AnimationProg 0