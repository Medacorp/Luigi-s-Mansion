data modify storage luigis_mansion:data temp_2 set from storage luigis_mansion:data current_state.current_data
$function $(namespace):room/$(id)/default_data
data modify storage luigis_mansion:data temp set from storage luigis_mansion:data current_state.current_data
data modify storage luigis_mansion:data current_state.mansion_data append from storage luigis_mansion:data current_state.current_data
data modify storage luigis_mansion:data current_state.current_data set from storage luigis_mansion:data temp_2
data remove storage luigis_mansion:data temp_2