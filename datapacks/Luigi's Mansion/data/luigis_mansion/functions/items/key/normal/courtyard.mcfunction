data modify storage luigis_mansion:data current_state.current_data.obtained_keys merge value {courtyard:1b}
scoreboard players set @a[tag=same_room,tag=!looking_at_map,nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}]}] OpenMapFocus 13
scoreboard players set @a GBHCall 8
execute as @a run function luigis_mansion:other/music/set/gameboy_horror_calling
function luigis_mansion:items/key/boss_sound