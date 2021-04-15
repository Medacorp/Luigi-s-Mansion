data modify storage luigis_mansion:data current_state.current_data.obtained_keys merge value {nursery:1b}
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/door/small_hallway_nursery
function luigis_mansion:items/key/sound