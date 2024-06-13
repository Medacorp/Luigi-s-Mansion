execute unless score #loaded_exterior Selected matches 1 in minecraft:overworld run function e3_demo:room/load_exterior/e3_demo
experience set @s 0 levels
execute if entity @a[nbt={Inventory:[{components:{"minecraft:custom_data":{id:"luigis_mansion:poltergust_3000"}}}]}] run function luigis_mansion:items/poltergust_3000/reset_element
execute unless data storage luigis_mansion:data current_state.current_data.mansion_id{namespace:"e3_demo",id:"original"} run function e3_demo:room/original/load_data
data modify storage luigis_mansion:data current_state.current_data.mansion_id set value {namespace:"e3_demo",id:"original"}
function luigis_mansion:room/underground_lab/leave