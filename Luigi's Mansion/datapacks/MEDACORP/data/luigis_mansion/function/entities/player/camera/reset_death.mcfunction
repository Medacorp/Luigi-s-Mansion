function luigis_mansion:entities/player/memory/get with entity @s
data remove storage luigis_mansion:data my_memory.camera
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory
tag @s remove keep_camera_motion
execute at @s run function luigis_mansion:main/update_last_position