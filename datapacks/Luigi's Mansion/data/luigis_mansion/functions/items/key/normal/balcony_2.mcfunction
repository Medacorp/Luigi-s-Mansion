data modify storage luigis_mansion:data current_state.current_data.obtained_keys merge value {balcony_2:1b}
scoreboard players set @a[tag=same_room,tag=!looking_at_map,nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}]}] OpenMapFocus 19
function luigis_mansion:items/key/sound