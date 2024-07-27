execute unless score #loaded_exterior Selected matches 1 run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.load_mansion.start"}]}
execute unless score #loaded_exterior Selected matches 1 in minecraft:overworld run schedule function e3_demo:room/load_exterior/e3_demo 5
data modify storage luigis_mansion:data current_state.current_data set value {nothing_loaded:1b}
function e3_demo:room/original/load_data
function luigis_mansion:data/save