execute at @s[tag=!fully_separated_camera] run function luigis_mansion:entities/player/camera/separate
function luigis_mansion:entities/player/memory/get with entity @s
summon minecraft:marker ~ ~ ~ {Tags:["camera_positon","remove_from_existence"]}
execute unless data storage luigis_mansion:data my_memory.camera.pos run data modify entity @e[tag=camera_positon,limit=1] Pos set from entity @s Pos
execute unless data storage luigis_mansion:data my_memory.camera.pos run data modify entity @e[tag=camera_positon,limit=1] Rotation set from entity @s Rotation
execute if data storage luigis_mansion:data my_memory.camera.pos run data modify entity @e[tag=camera_positon,limit=1] Pos set from storage luigis_mansion:data my_memory.camera.pos
execute if data storage luigis_mansion:data my_memory.camera.pos run data modify entity @e[tag=camera_positon,limit=1] Rotation set from storage luigis_mansion:data my_memory.camera.rotation
$execute as @e[tag=camera_positon,limit=1] $(execute) run teleport @e[tag=camera_positon,limit=1] $(teleport)
data modify storage luigis_mansion:data my_memory.camera.pos set from entity @e[tag=camera_positon,limit=1] Pos
data modify storage luigis_mansion:data my_memory.camera.rotation set from entity @e[tag=camera_positon,limit=1] Rotation
kill @e[tag=camera_positon,limit=1]
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory