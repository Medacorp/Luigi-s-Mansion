data modify storage luigis_mansion:data saved_state set from storage luigis_mansion:data current_state
execute if entity @a[tag=!portrait_battle] unless data storage luigis_mansion:data saved_state.current_data{nothing_loaded:1b} run data modify storage luigis_mansion:data saved_state.mansion_data append from storage luigis_mansion:data saved_state.current_data
execute if entity @a[tag=portrait_battle] run data modify storage luigis_mansion:data saved_state.mansion_data append from storage 3ds_remake:data loaded_mansion.data
data remove storage luigis_mansion:data saved_state.current_data