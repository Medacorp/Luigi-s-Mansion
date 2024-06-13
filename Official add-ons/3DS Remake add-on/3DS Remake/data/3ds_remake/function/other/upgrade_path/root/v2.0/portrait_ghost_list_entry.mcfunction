data modify storage luigis_mansion_3ds_remake:data new_portrait_ghost[-1].mansion_type set from storage luigis_mansion_3ds_remake:data new_portrait_ghost[-1].data_index
data modify storage luigis_mansion_3ds_remake:data portrait_ghost append from storage luigis_mansion_3ds_remake:data new_portrait_ghost[-1]
data remove storage luigis_mansion_3ds_remake:data new_portrait_ghost[-1]
execute if data storage luigis_mansion_3ds_remake:data new_portrait_ghost[-1] run function 3ds_remake:other/upgrade_path/v2.0/portrait_ghost_list_entry