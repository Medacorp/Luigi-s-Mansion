data modify storage 3ds_remake:data portrait_ghost append value {mansion_type:-1,data_index:-1,peaceful:{health:-1,speed:-1},easy:{health:-1,speed:-1},normal:{health:-1,speed:-1},hard:{health:-1,speed:-1}}
data modify storage 3ds_remake:data portrait_ghost[-1].normal.health set from storage 3ds_remake:data new_portrait_ghost[-1].health
data modify storage 3ds_remake:data portrait_ghost[-1].normal.speed set from storage 3ds_remake:data new_portrait_ghost[-1].speed
data modify storage 3ds_remake:data portrait_ghost[-1].mansion_type set from storage 3ds_remake:data new_portrait_ghost[-1].mansion_type
data modify storage 3ds_remake:data portrait_ghost[-1].data_index set from storage 3ds_remake:data new_portrait_ghost[-1].data_index
data remove storage 3ds_remake:data new_portrait_ghost[-1]
execute if data storage 3ds_remake:data new_portrait_ghost[-1] run function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list_entry