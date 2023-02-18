execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s HomeZ
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s HomeRotationX
execute store result entity @s Rotation[1] float 1 run scoreboard players get @s HomeRotationY
execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s HomeRotationY
execute store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get @s HomeRotationY
execute at @s positioned ~ ~1 ~ run function luigis_mansion:spawn_entities/vacuumable/haunted_object/haunted_music_sheet
execute at @s run scoreboard players set @e[tag=haunted_music_sheet,distance=..1] WaitTime -60