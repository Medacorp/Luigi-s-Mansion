data modify storage luigis_mansion:data current_state.current_data.obtained_keys merge value {hallway_8:1b}
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/door/hallway_5_hallway_8
function luigis_mansion:items/key/sound