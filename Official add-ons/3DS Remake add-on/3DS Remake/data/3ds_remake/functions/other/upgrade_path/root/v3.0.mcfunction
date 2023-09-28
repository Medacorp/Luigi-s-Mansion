execute unless data storage luigis_mansion_3ds_remake:data {data_version:2} run function 3ds_remake:other/upgrade_path/root/v2.0
data modify storage 3ds_remake:data {} merge from storage luigis_mansion_3ds_remake:data {}
data merge storage 3ds_remake:data {data_version:3}
data modify storage 3ds_remake:data new_ghosts.luigis_mansion set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in set from storage 3ds_remake:data new_ghosts
data remove storage 3ds_remake:data new_ghosts
data modify storage 3ds_remake:data new_ghosts.luigis_mansion set from storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in
data modify storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in set from storage 3ds_remake:data new_ghosts
data remove storage 3ds_remake:data new_ghosts