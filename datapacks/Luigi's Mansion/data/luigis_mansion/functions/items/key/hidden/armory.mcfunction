data modify storage luigis_mansion:data current_state.current_data.obtained_keys merge value {armory:1b}
scoreboard players set @a[tag=same_room,tag=!looking_at_map,nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}]}] OpenMapFocus 23
function luigis_mansion:items/key/sound