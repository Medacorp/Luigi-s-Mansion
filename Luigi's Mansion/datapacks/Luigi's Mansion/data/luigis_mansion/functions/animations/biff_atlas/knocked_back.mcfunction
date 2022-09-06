teleport @e[tag=this_model,tag=body,limit=1] ~ ~ ~ ~ ~
teleport @e[tag=this_model,tag=right_arm,limit=1] ^-0.46 ^-0.2 ^ ~ ~
teleport @e[tag=this_model,tag=left_arm,limit=1] ^0.46 ^-0.2 ^ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=body,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=right_arm,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=left_arm,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 1
execute if entity @s[scores={AnimationProg=1..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 19
execute if entity @s[scores={AnimationProg=21..30}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=31..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=41..50}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=51..60}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=61..70}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=71..80}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute store result score #temp Time run data get entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] 1
execute if entity @s[scores={AnimationProg=1..20}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 19
execute store result score #temp Time run data get entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] 1
execute if entity @s[scores={AnimationProg=1..20}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 35
execute store result score #temp Time run data get entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[1] 1
execute if entity @s[scores={AnimationProg=21..30}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=31..40}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=41..50}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=51..60}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=61..70}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=71..80}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=81..90}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=91..100}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=101..110}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=111..120}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[1] float 1 run scoreboard players remove #temp Time 1
execute store result score #temp Time run data get entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] 1
execute if entity @s[scores={AnimationProg=1..20}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 35
execute store result score #temp Time run data get entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[1] 1
execute if entity @s[scores={AnimationProg=21..30}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=31..40}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=41..50}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=51..60}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=61..70}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=71..80}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=81..90}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=91..100}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=101..110}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=111..120}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[1] float 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=120..}] AnimationProg 0
execute if entity @s[scores={AnimationProg=1}] run playsound luigis_mansion:entity.biff_atlas.hit hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=80}] run playsound luigis_mansion:entity.biff_atlas.sigh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=100}] run playsound luigis_mansion:entity.biff_atlas.pant hostile @a[tag=same_room] ~ ~ ~ 1