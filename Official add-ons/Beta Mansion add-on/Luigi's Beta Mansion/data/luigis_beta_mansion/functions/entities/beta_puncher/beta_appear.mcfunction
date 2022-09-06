scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_beta_mansion:entity.puncher.spawn_beta hostile @a[tag=same_room] ~ ~ ~ 1
data merge entity @s[scores={ActionTime=1}] {Pose:{RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f]}}
execute if score #mirrored Selected matches 0 run teleport @s[scores={ActionTime=1}] ~ ~4 ~ ~40 ~
execute if score #mirrored Selected matches 1 run teleport @s[scores={ActionTime=1}] ~ ~4 ~ ~-40 ~
execute if score #mirrored Selected matches 0 at @s run teleport @s ~ ~-0.1 ~ ~-10 ~
execute if score #mirrored Selected matches 1 at @s run teleport @s ~ ~-0.1 ~ ~10 ~
data merge entity @s[scores={ActionTime=40}] {Pose:{RightArm:[-90.0f,0.0f,0.0f],LeftArm:[-90.0f,0.0f,0.0f]}}
tag @s[scores={ActionTime=40}] remove appear
scoreboard players set @s[scores={ActionTime=40}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0