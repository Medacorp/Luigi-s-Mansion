execute if data storage luigis_mansion:data current_state.current_data{boo_counter:49} run data modify storage luigis_mansion:data entity.rotation set value [90.0f,0.0f]
execute if data storage luigis_mansion:data current_state.current_data{boo_counter:49} at @a[tag=killer,limit=1] run function luigis_mansion:spawn_entities/item/gold_diamond
execute if data storage luigis_mansion:data current_state.current_data{boo_counter:4} run data modify storage luigis_mansion:data current_state.current_data.used_keys append value "washroom_1"
execute if data storage luigis_mansion:data current_state.current_data{boo_counter:4} run tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:hidden"},limit=1] add regenerate_map
execute store result score #temp Boos run data get storage luigis_mansion:data current_state.current_data.boo_counter
execute store result storage luigis_mansion:data current_state.current_data.boo_counter int 1 run scoreboard players add #temp Boos 1
scoreboard players reset #temp Boos
execute if entity @s[nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boolossus"}}}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"caught_boo"},progress:0}