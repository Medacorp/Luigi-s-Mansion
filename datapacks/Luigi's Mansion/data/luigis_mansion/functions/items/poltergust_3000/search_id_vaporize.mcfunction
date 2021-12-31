execute store result score #temp2 ID run data get storage luigis_mansion:data ghost_list[-1]
execute if score #temp ID = #temp2 ID run tag @s add this_room
data remove storage luigis_mansion:data ghost_list[-1]
execute if entity @s[tag=this_room] if data storage luigis_mansion:data ghost_list[-1] run function luigis_mansion:items/poltergust_3000/search_id