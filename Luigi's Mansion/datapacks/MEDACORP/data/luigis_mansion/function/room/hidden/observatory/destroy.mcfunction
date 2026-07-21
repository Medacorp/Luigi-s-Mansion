place template luigis_mansion:observatory/destroyed 640 19 103 none left_right
tag @e[tag=furniture,tag=destroyed_by_observatory] add remove_from_existence
data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {observatory_destroyed:1b}