data modify storage luigis_mansion:data current_state.current_data.obtained_keys append value "hallway_2"
scoreboard players set @a[tag=same_room,tag=!looking_at_map,nbt={Inventory:[{components:{"minecraft:custom_data":{id:"luigis_mansion:game_boy_horror"}}}]}] OpenMapFocus 2
function luigis_mansion:items/key/sound