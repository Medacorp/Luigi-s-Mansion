tag @e[scores={Room=65},tag=door,tag=frame] remove blockade
data modify storage luigis_mansion:data current_state.current_data.rooms.ceramics_studio merge value {cleared:1b}
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/generate