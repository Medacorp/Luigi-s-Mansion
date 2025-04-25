function luigis_mansion:entities/player/memory/get with entity @s
execute store result score #temp Time run data get storage luigis_mansion:data my_memory.camera.pos[0]
execute store result score #temp2 Time run data get storage luigis_mansion:data my_memory.camera.edge_pos[0]
execute if score #temp2 Time < #temp Time run data modify storage luigis_mansion:data my_memory.camera.pos[0] set from storage luigis_mansion:data my_memory.camera.edge_pos[0]
execute store result score #temp Time run data get storage luigis_mansion:data my_memory.camera.pos[2]
execute store result score #temp2 Time run data get storage luigis_mansion:data my_memory.camera.edge_pos[2]
execute if score #temp Time < #temp2 Time run data modify storage luigis_mansion:data my_memory.camera.pos[2] set from storage luigis_mansion:data my_memory.camera.edge_pos[2]
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory
