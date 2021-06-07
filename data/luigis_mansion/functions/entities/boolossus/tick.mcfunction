execute if entity @s[tag=dead] run playsound luigis_mansion:entity.boolossus.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run function luigis_mansion:entities/boolossus/at_death

execute if entity @s[tag=battle] run function #luigis_mansion:entities/boolossus/fight
execute if entity @s[tag=!battle,tag=!split] run function #luigis_mansion:entities/boolossus/balcony

execute store result entity @s Pose.Head[0] float 0.01 run data get entity @s Rotation[1] 100
execute store result entity @s Pose.RightArm[1] float -0.01 run data get entity @s Rotation[1] 100
execute store result entity @s Pose.LeftArm[1] float 0.01 run data get entity @s Rotation[1] 100