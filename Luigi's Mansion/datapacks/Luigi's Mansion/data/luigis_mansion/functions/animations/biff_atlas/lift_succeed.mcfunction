scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1..20}] ^ ^-0.03 ^0.02
teleport @s[scores={AnimationProgress=41..50}] ^ ^0.06 ^
teleport @s[scores={AnimationProgress=121..140}] ^ ^ ^-0.02
execute at @s run teleport @e[tag=this_model,tag=body,limit=1] ~ ~ ~ ~ ~
execute at @s run teleport @e[tag=this_model,tag=right_arm,limit=1] ^-0.46 ^-0.2 ^ ~ ~
execute at @s run teleport @e[tag=this_model,tag=left_arm,limit=1] ^0.46 ^-0.2 ^ ~ ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.01f,0.0f,0.0f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=body,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=right_arm,limit=1] {Pose:{Head:[-90.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=left_arm,limit=1] {Pose:{Head:[-90.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] 10
execute if entity @s[scores={AnimationProgress=1..20}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] float 0.1 run scoreboard players add #temp Time 16
execute if entity @s[scores={AnimationProgress=41..50}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 32
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProgress=1..20}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 8
execute if entity @s[scores={AnimationProgress=21..40}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProgress=51..60}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 32
execute if entity @s[scores={AnimationProgress=121..140}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 8
execute if entity @s[scores={AnimationProgress=141..150}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 24
execute if entity @s[scores={AnimationProgress=141..160}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 8
execute store result score #temp Time run data get entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] 1
execute if entity @s[scores={AnimationProgress=1..20}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=21..40}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=46..55}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 8
execute if entity @s[scores={AnimationProgress=66..75}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=76..85}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=86..95}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=96..105}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=106..115}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=116..125}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=126..140}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 8
execute if entity @s[scores={AnimationProgress=141..160}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
execute store result score #temp Time run data get entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] 1
execute if entity @s[scores={AnimationProgress=1..20}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=21..40}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=46..55}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 8
execute if entity @s[scores={AnimationProgress=66..75}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=76..85}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=86..95}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=96..105}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=106..115}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=116..125}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=126..140}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 8
execute if entity @s[scores={AnimationProgress=141..160}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=160..}] AnimationProgress 0
execute if entity @s[scores={AnimationProgress=21}] run playsound luigis_mansion:entity.biff_atlas.lift_1 hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=41}] run playsound luigis_mansion:entity.biff_atlas.lift_4 hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=75}] run playsound luigis_mansion:entity.biff_atlas.lift_succeed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=81}] run playsound luigis_mansion:entity.biff_atlas.lift_1 hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=95}] run playsound luigis_mansion:entity.biff_atlas.lift_succeed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=115}] run playsound luigis_mansion:entity.biff_atlas.lift_succeed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=135}] run playsound luigis_mansion:entity.biff_atlas.lift_6 hostile @a[tag=same_room] ~ ~ ~ 1