execute if entity @s[tag=captured] run function luigis_mansion:entities/boolossus/at_death

function #luigis_mansion:entities/boolossus/tick

execute store result entity @s Pose.Head[0] float 0.01 run data get entity @s Rotation[1] 100
execute store result entity @s Pose.RightArm[1] float -0.01 run data get entity @s Rotation[1] 100
execute store result entity @s Pose.LeftArm[1] float 0.01 run data get entity @s Rotation[1] 100