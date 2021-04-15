data modify storage luigis_mansion:data current_state.current_data.obtained_keys merge value {main_stairs:1b}
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/door/main_hallway_main_stairs
function luigis_mansion:items/key/sound