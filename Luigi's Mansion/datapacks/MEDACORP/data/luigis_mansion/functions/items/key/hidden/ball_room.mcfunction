data modify storage luigis_mansion:data current_state.current_data.obtained_keys append value "ball_room"
scoreboard players set @a[tag=same_room,tag=!looking_at_map,nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:game_boy_horror"}}}]}] OpenMapFocus 6
function luigis_mansion:items/key/sound