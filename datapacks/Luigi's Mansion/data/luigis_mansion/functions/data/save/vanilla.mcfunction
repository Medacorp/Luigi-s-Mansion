data modify storage luigis_mansion:data saved_state set from storage luigis_mansion:data current_state
data modify storage luigis_mansion:data saved_state.mansion_data append from storage luigis_mansion:data saved_state.current_data
data remove storage luigis_mansion:data saved_state.current_data