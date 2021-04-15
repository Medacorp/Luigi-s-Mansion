scoreboard players set #temp Searched -1
playsound luigis_mansion:item.key.use player @a 654.0 103 53 2
data modify storage luigis_mansion:data current_state.current_data.used_keys merge value {rec_room:1b}
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/door/courtyard_rec_room