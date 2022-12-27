data modify storage luigis_mansion:data this_memory set from storage luigis_mansion:data memory
data modify storage luigis_mansion:data new_memory set value []
data modify storage luigis_mansion:data temp set from entity @s UUID
data modify storage luigis_mansion:data my_memory set value {uuid:[I;],inventory:{},model:{color:0,variant:0b},hurt_by:{method:""},revived_by:"",poltergust_element:"none"}
data modify storage luigis_mansion:data my_memory.uuid set from entity @s UUID
execute if data storage luigis_mansion:data this_memory[-1] run function luigis_mansion:entities/player/memory/search
data remove storage luigis_mansion:data temp
scoreboard players reset #temp Time
data modify storage luigis_mansion:data memory set from storage luigis_mansion:data new_memory
data remove storage luigis_mansion:data this_memory
data remove storage luigis_mansion:data new_memory