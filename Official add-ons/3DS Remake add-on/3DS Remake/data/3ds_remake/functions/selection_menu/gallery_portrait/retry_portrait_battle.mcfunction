data remove storage luigis_mansion:data dialogs[{name:{namespace:"3ds_remake",id:"portrait_battle/clear"}}]

data modify storage luigis_mansion:data selected_option.portrait_battle_data.mansion_namespace set from storage luigis_mansion:data current_state.current_data.mansion.namespace
data modify storage luigis_mansion:data selected_option.portrait_battle_data.mansion_id set from storage luigis_mansion:data current_state.current_data.mansion.id
data modify storage luigis_mansion:data selected_option.portrait_battle_data.portrait_ghost_namespace set from storage luigis_mansion:data current_state.current_data.portrait_battle.namespace
data modify storage luigis_mansion:data selected_option.portrait_battle_data.portrait_ghost_id set from storage luigis_mansion:data current_state.current_data.portrait_battle.id
data modify storage luigis_mansion:data selected_option.portrait_battle_position set from storage luigis_mansion:data current_state.current_data.portrait_battle.position
data modify storage luigis_mansion:data selected_option.mode set from storage luigis_mansion:data current_state.current_data.portrait_battle.mode
function luigis_mansion:room/reset_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
function 3ds_remake:room/portrait_battle/prepare with storage luigis_mansion:data selected_option.portrait_battle_data