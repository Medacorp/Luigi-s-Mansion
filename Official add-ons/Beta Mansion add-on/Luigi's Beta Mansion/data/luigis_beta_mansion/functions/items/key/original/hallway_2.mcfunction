data modify storage luigis_mansion:data current_state.current_data.obtained_keys merge value {hallway_2:1b}
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_beta_mansion:items/gameboy_horror/map/display/original/generate
playsound luigis_mansion:item.key.obtain player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @a[tag=same_room,tag=!looking_at_map,nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}]}] OpenMapFocus 2
scoreboard players set @a[tag=same_room,tag=!looking_at_map,nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}]}] OpenMapTime 20