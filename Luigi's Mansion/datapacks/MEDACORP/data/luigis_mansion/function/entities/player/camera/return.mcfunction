function luigis_mansion:entities/player/memory/get with entity @s
data remove storage luigis_mansion:data my_memory.camera
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory
summon minecraft:marker ~ ~ ~ {Tags:["model_positon","remove_from_existence"]}
execute store result entity @e[tag=model_positon,limit=1] Pos[0] double 0.01 run scoreboard players get @s ModelPositionX
execute store result entity @e[tag=model_positon,limit=1] Pos[1] double 0.01 run scoreboard players get @s ModelPositionY
execute store result entity @e[tag=model_positon,limit=1] Pos[2] double 0.01 run scoreboard players get @s ModelPositionZ
execute store result entity @e[tag=model_positon,limit=1] Rotation[1] float 1 run scoreboard players get @s ModelRotationX
execute store result entity @e[tag=model_positon,limit=1] Rotation[0] float 1 run scoreboard players get @s ModelRotationY
execute at @e[tag=model_positon,limit=1] run teleport @s ~ ~ ~ ~ ~
kill @e[tag=model_positon,limit=1]
tag @s[tag=!third_person_movement] remove separated_camera
tag @s remove fully_separated_camera
tag @s remove keep_camera_motion
execute at @s run function luigis_mansion:main/update_last_position