execute at @s[tag=!separated_camera,tag=!spectator] run function luigis_mansion:entities/player/camera/separate
function luigis_mansion:entities/player/memory/get with entity @s
attribute @s minecraft:gravity base set 0
summon minecraft:marker ~ ~ ~ {Tags:["last_positon","remove_from_existence"]}
data modify entity @e[tag=last_positon,limit=1] Pos set from storage luigis_mansion:data my_memory.camera.pos
data modify entity @e[tag=last_positon,limit=1] Rotation set from storage luigis_mansion:data my_memory.camera.rotation
# Return to position from last camera movement, so player movement is ignored in relative camera movement
execute at @e[tag=last_positon,limit=1] run teleport @s ~ ~ ~ ~ ~
kill @e[tag=last_positon,limit=1]
# Actual movement
$execute $(execute) run teleport @s $(teleport)
execute at @s run function luigis_mansion:main/update_last_position
data modify storage luigis_mansion:data my_memory.camera.pos set from entity @s Pos
data modify storage luigis_mansion:data my_memory.camera.rotation set from entity @s Rotation
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory