execute if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:0b} run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"hidden/caught_king_boo"},progress:0}
data modify storage luigis_mansion:data current_state.current_data.rooms.secret_altar merge value {cleared:1b}
teleport @s 641 93 33 -90 0