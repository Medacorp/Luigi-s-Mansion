execute at @s[tag=!separated_camera,tag=!spectator] run function luigis_mansion:entities/player/camera/separate
function luigis_mansion:entities/player/memory/get with entity @s
attribute @s minecraft:gravity base set 0
execute if data storage luigis_mansion:data my_memory.camera.pos run summon minecraft:marker ~ ~ ~ {Tags:["last_positon","remove_from_existence"]}
execute if data storage luigis_mansion:data my_memory.camera.pos run data modify entity @e[tag=last_positon,limit=1] Pos set from storage luigis_mansion:data my_memory.camera.pos
execute if data storage luigis_mansion:data my_memory.camera.pos run data modify entity @e[tag=last_positon,limit=1] Rotation set from storage luigis_mansion:data my_memory.camera.rotation
# Return to position from last camera movement, so player movement is ignored in relative camera movement
execute if data storage luigis_mansion:data my_memory.camera.pos at @e[tag=last_positon,limit=1] run tag @s[distance=0.001..] add teleport_now
execute if data storage luigis_mansion:data my_memory.camera.pos at @e[tag=last_positon,limit=1] run teleport @s[tag=teleport_now] @e[tag=last_positon,limit=1]
tag @s remove teleport_now
$execute if data storage luigis_mansion:data my_memory.camera.pos $(execute) run teleport @e[tag=last_positon,limit=1] $(teleport)
execute if data storage luigis_mansion:data my_memory.camera.pos store success score #temp Time run data modify entity @e[tag=last_positon,limit=1] Pos set from storage luigis_mansion:data my_memory.camera.pos
execute if score #temp Time matches 0 store success score #temp Time run data modify entity @e[tag=last_positon,limit=1] Rotation set from storage luigis_mansion:data my_memory.camera.rotation
execute if score #temp Time matches 1 run tag @s add teleport_now
execute unless data storage luigis_mansion:data my_memory.camera.pos run tag @s add teleport_now
kill @e[tag=last_positon,limit=1]
# Actual movement
$execute $(execute) run teleport @s[tag=teleport_now] $(teleport)
tag @s remove teleport_now
execute at @s run function luigis_mansion:main/update_last_position
data modify storage luigis_mansion:data my_memory.camera.pos set from entity @s Pos
data modify storage luigis_mansion:data my_memory.camera.rotation set from entity @s Rotation
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory