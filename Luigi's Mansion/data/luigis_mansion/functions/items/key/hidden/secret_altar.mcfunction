data modify storage luigis_mansion:data current_state.current_data.obtained_keys merge value {secret_altar:1b}
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/door/curved_hallway_secret_altar
function luigis_mansion:items/key/boss_sound