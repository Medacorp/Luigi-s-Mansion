data modify storage luigis_mansion_3ds_remake:data new_portrait_ghost set from storage luigis_mansion_3ds_remake:data portrait_ghost
data modify storage luigis_mansion_3ds_remake:data portrait_ghost set value []
execute if data storage luigis_mansion_3ds_remake:data new_portrait_ghost[-1] run function 3ds_remake:other/upgrade_path/v2.0/portrait_ghost_list_entry
data remove storage luigis_mansion_3ds_remake:data new_portrait_ghost