function luigis_mansion:entities/player/memory/get with entity @s
execute if data storage luigis_mansion:data my_memory.camera.pos run summon minecraft:marker ~ ~ ~ {Tags:["camera_positon","remove_from_existence"]}
execute if data storage luigis_mansion:data my_memory.camera.pos run data modify entity @e[tag=camera_positon,limit=1] Pos set from storage luigis_mansion:data my_memory.camera.pos
execute if data storage luigis_mansion:data my_memory.camera.pos run data modify entity @e[tag=camera_positon,limit=1] Rotation set from storage luigis_mansion:data my_memory.camera.rotation
execute if data storage luigis_mansion:data my_memory.camera.pos run teleport @s[tag=!keep_camera_motion] @e[tag=camera_positon,limit=1]
execute if data storage luigis_mansion:data my_memory.camera.pos at @e[tag=camera_positon,limit=1] run teleport @s[tag=keep_camera_motion] ~ ~ ~ ~ ~
execute if data storage luigis_mansion:data my_memory.camera.pos at @s run function luigis_mansion:main/update_last_position
execute if data storage luigis_mansion:data my_memory.camera.pos run kill @e[tag=camera_positon,limit=1]
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory