execute unless score #loaded_exterior Selected matches 1 run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.load_mansion.start"}]}
execute unless score #loaded_exterior Selected matches 1 in minecraft:overworld run schedule function e3_demo:room/load_exterior/e3_demo 5
experience set @s 0 levels
execute if entity @a[nbt={Inventory:[{components:{"minecraft:custom_data":{id:"luigis_mansion:poltergust_3000"}}}]}] run function luigis_mansion:items/poltergust_3000/reset_element
execute unless data storage luigis_mansion:data current_state.current_data.mansion_id{namespace:"e3_demo",id:"original"} run function e3_demo:room/original/load_data
data modify storage luigis_mansion:data current_state.current_data.mansion_id set value {namespace:"e3_demo",id:"original"}
function luigis_mansion:room/underground_lab/leave