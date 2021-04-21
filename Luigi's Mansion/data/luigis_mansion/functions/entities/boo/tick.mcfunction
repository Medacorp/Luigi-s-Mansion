execute if entity @s[tag=!cutscene] run function luigis_mansion:entities/boo/ghost
execute if entity @s[tag=cutscene] run function luigis_mansion:entities/boo/cutscene

execute store result entity @s Pose.Head[0] float 0.01 run data get entity @s Rotation[1] 100
execute store result entity @s Pose.RightArm[2] float 0.01 run data get entity @s Rotation[1] 100
execute store result entity @s Pose.LeftArm[2] float 0.01 run data get entity @s Rotation[1] 100