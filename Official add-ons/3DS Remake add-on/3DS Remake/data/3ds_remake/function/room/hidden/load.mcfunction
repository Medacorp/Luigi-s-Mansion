execute unless score #loaded_exterior Selected matches 0 run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.load_mansion.start"}]}
execute unless score #loaded_exterior Selected matches 0 in minecraft:overworld run schedule function luigis_mansion:room/load_exterior/mansion 5
scoreboard players reset @a Element
execute if entity @a[nbt={Inventory:[{components:{"minecraft:custom_data":{id:"luigis_mansion:poltergust_3000"}}}]}] run function luigis_mansion:items/poltergust_3000/reset_element
execute unless data storage luigis_mansion:data current_state.current_data.mansion_id{namespace:"3ds_remake",id:"hidden"} run function 3ds_remake:room/hidden/load_data
data modify storage luigis_mansion:data current_state.current_data.mansion_id set value {namespace:"3ds_remake",id:"hidden"}
function luigis_mansion:room/underground_lab/leave