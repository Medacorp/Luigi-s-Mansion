scoreboard players set #nanas_room Ticking 1
data modify storage luigis_mansion:data current_state.current_data.rooms.nanas_room merge value {seen:1b}
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/nanas_room