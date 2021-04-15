scoreboard players set #secret_altar Ticking 1
data modify storage luigis_mansion:data current_state.current_data.rooms.secret_altar merge value {seen:1b}
execute if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} run scoreboard players set #can_warp Selected 0
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/secret_altar