function luigis_mansion:entities/player/memory/get with entity @s
summon minecraft:marker ~ ~ ~ {Tags:["camera_positon","remove_from_existence"]}
data modify entity @e[tag=camera_positon,limit=1] Pos set from storage luigis_mansion:data my_memory.camera.pos
data modify entity @e[tag=camera_positon,limit=1] Rotation set from storage luigis_mansion:data my_memory.camera.rotation
teleport @s @e[tag=camera_positon,limit=1]
execute at @s run function luigis_mansion:main/update_last_position
kill @e[tag=camera_positon,limit=1]
data remove storage luigis_mansion:data my_memory.camera
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory
attribute @s minecraft:gravity base reset
