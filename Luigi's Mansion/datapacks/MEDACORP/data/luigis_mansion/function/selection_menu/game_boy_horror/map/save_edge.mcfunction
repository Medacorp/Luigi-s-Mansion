function luigis_mansion:entities/player/memory/get with entity @s
data modify storage luigis_mansion:data my_memory.camera.edge_pos set from storage luigis_mansion:data my_memory.camera.pos
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory
