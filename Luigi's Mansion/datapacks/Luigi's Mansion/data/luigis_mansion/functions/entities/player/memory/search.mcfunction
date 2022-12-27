execute store success score #temp Time run data modify storage luigis_mansion:data temp set from storage luigis_mansion:data this_memory[-1].uuid
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data my_memory set from storage luigis_mansion:data this_memory[-1]
execute unless score #temp Time matches 0 run data modify storage luigis_mansion:data new_memory append from storage luigis_mansion:data this_memory[-1]
data modify storage luigis_mansion:data temp set from entity @s UUID
data remove storage luigis_mansion:data this_memory[-1]
execute if score #temp Time matches 0 if data storage luigis_mansion:data this_memory[-1] run data modify storage luigis_mansion:data new_memory append from storage luigis_mansion:data this_memory[]
execute unless score #temp Time matches 0 if data storage luigis_mansion:data this_memory[-1] run function luigis_mansion:entities/player/memory/search