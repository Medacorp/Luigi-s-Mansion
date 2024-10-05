data modify storage 3ds_remake:data new_portrait_ghost set from storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set value []
execute if data storage 3ds_remake:data new_portrait_ghost[-1] run function 3ds_remake:other/upgrade_path/v3.1/portrait_ghost_list_entry
data remove storage 3ds_remake:data new_portrait_ghost
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time