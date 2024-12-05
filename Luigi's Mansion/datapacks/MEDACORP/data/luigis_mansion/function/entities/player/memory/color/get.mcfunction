function luigis_mansion:entities/player/memory/get with entity @s
execute store result score #temp Time run data get storage luigis_mansion:data my_memory.model.color
execute store result score #temp2 Time run data get storage luigis_mansion:data my_memory.model.variant
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory