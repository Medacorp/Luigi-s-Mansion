execute store result score @s TargetX run data get entity @e[tag=this_room,tag=!spectator,sort=nearest,limit=1] Pos[0] 100
execute store result score @s TargetY run data get entity @e[tag=this_room,tag=!spectator,sort=nearest,limit=1] Pos[1] 100
execute store result score @s TargetZ run data get entity @e[tag=this_room,tag=!spectator,sort=nearest,limit=1] Pos[2] 100
execute if entity @s[tag=!targetted] run playsound luigis_beta_mansion:entity.bat.attack hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[tag=!targetted] HandItems[0].tag.CustomModelData set value 14
data modify entity @s[tag=!targetted] HandItems[1].tag.CustomModelData set value 14
data merge entity @s[tag=!targetted] {Pose:{RightArm:[30.0f,0.0f,0.01f],LeftArm:[30.0f,0.0f,0.01f],Head:[30.0f,0.0f,0.01f]}}
scoreboard players set @s[tag=!targetted] AnimationProg 0
tag @s add targetted