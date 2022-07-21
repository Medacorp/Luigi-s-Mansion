teleport @s[scores={Dialog=1}] ~ ~0.05 ~
teleport @s[scores={Dialog=2}] ~ ~0.1 ~
teleport @s[scores={Dialog=3}] ~ ~0.15 ~
teleport @s[scores={Dialog=4}] ~ ~0.2 ~
teleport @s[scores={Dialog=5}] ~ ~0.25 ~
teleport @s[scores={Dialog=6}] ~ ~0.3 ~
teleport @s[scores={Dialog=7}] ~ ~0.35 ~
teleport @s[scores={Dialog=8}] ~ ~0.4 ~
teleport @s[scores={Dialog=9}] ~ ~0.45 ~
teleport @s[scores={Dialog=10}] ~ ~0.5 ~
teleport @s[scores={Dialog=11}] ~ ~-0.45 ~
teleport @s[scores={Dialog=12}] ~ ~-0.4 ~
teleport @s[scores={Dialog=13}] ~ ~-0.35 ~
teleport @s[scores={Dialog=14}] ~ ~-0.3 ~
teleport @s[scores={Dialog=15}] ~ ~-0.25 ~
teleport @s[scores={Dialog=16}] ~ ~-0.2 ~
teleport @s[scores={Dialog=17}] ~ ~-0.15 ~
teleport @s[scores={Dialog=18}] ~ ~-0.1 ~
teleport @s[scores={Dialog=19}] ~ ~-0.05 ~
teleport @s[scores={Dialog=21}] ~ ~0.05 ~
teleport @s[scores={Dialog=22}] ~ ~0.1 ~
teleport @s[scores={Dialog=23}] ~ ~0.15 ~
teleport @s[scores={Dialog=24}] ~ ~0.2 ~
teleport @s[scores={Dialog=25}] ~ ~0.25 ~
teleport @s[scores={Dialog=26}] ~ ~0.3 ~
teleport @s[scores={Dialog=27}] ~ ~0.35 ~
teleport @s[scores={Dialog=28}] ~ ~0.4 ~
teleport @s[scores={Dialog=29}] ~ ~0.45 ~
teleport @s[scores={Dialog=30}] ~ ~0.5 ~
teleport @s[scores={Dialog=31}] ~ ~-0.45 ~
teleport @s[scores={Dialog=32}] ~ ~-0.4 ~
teleport @s[scores={Dialog=33}] ~ ~-0.35 ~
teleport @s[scores={Dialog=34}] ~ ~-0.3 ~
teleport @s[scores={Dialog=35}] ~ ~-0.25 ~
teleport @s[scores={Dialog=36}] ~ ~-0.2 ~
teleport @s[scores={Dialog=37}] ~ ~-0.15 ~
teleport @s[scores={Dialog=38}] ~ ~-0.1 ~
teleport @s[scores={Dialog=39}] ~ ~-0.05 ~
execute at @s run teleport @e[tag=this_model,tag=body,limit=1] ~ ~-0.9 ~ ~ ~
execute at @s run teleport @s ~ ~-0.35 ~ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[0.0f,0.01f,0.0f],LeftArm:[0.0f,-0.01f,0.0f],Head:[0.0f,0.01f,0.0f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=body,limit=1] {Pose:{RightArm:[0.0f,0.0f,0.01f],LeftArm:[0.0f,0.0f,0.01f],Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @e[tag=this_model,tag=body,limit=1] Pose.RightArm[2] 1
execute if entity @s[scores={AnimationProg=1..10}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.RightArm[2] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=11..20}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.RightArm[2] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=21..30}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.RightArm[2] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=31..40}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.RightArm[2] float 1 run scoreboard players remove #temp Time 1
execute store result score #temp Time run data get entity @e[tag=this_model,tag=body,limit=1] Pose.LeftArm[2] 1
execute if entity @s[scores={AnimationProg=1..10}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.LeftArm[2] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=11..20}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.LeftArm[2] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=21..30}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.LeftArm[2] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=31..40}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.LeftArm[2] float 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get entity @s Pose.RightArm[2] 1
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=11..20}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=21..30}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=31..40}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players remove #temp Time 1
execute store result score #temp Time run data get entity @s Pose.LeftArm[2] 1
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=11..20}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=21..30}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=31..40}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get entity @s Pose.Head[0] 1
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=6..15}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=16..25}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=26..35}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=36..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get entity @s Pose.Head[2] 1
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=11..30}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=31..40}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProg=1}] run playsound luigis_mansion:entity.e_gadd.jump neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=20}] run playsound luigis_mansion:entity.e_gadd.jump neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=21}] run playsound luigis_mansion:entity.e_gadd.land neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=40}] run playsound luigis_mansion:entity.e_gadd.land neutral @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={AnimationProg=40}] AnimationProg 0