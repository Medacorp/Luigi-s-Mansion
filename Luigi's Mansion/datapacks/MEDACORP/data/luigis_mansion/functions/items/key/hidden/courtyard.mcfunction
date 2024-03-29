data modify storage luigis_mansion:data current_state.current_data.obtained_keys append value "courtyard"
scoreboard players set @a[tag=same_room,tag=!looking_at_map,nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:game_boy_horror"}}}]}] OpenMapFocus 12
data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"area_2_key"},progress:0}
function luigis_mansion:items/key/boss_sound