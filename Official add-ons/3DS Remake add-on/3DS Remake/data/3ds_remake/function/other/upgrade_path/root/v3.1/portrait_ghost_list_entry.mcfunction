data modify storage 3ds_remake:data portrait_ghost append from storage 3ds_remake:data new_portrait_ghost[-1]
execute if data storage 3ds_remake:data portrait_ghost[-1].peaceful{health:-1} run data remove storage 3ds_remake:data portrait_ghost[-1].peaceful
execute if data storage 3ds_remake:data portrait_ghost[-1].easy{health:-1} run data remove storage 3ds_remake:data portrait_ghost[-1].easy
execute if data storage 3ds_remake:data portrait_ghost[-1].normal{health:-1} run data remove storage 3ds_remake:data portrait_ghost[-1].normal
execute if data storage 3ds_remake:data portrait_ghost[-1].hard{health:-1} run data remove storage 3ds_remake:data portrait_ghost[-1].hard
data remove storage 3ds_remake:data new_portrait_ghost[-1]
execute if data storage 3ds_remake:data new_portrait_ghost[-1] run function 3ds_remake:other/upgrade_path/v3.1/portrait_ghost_list_entry