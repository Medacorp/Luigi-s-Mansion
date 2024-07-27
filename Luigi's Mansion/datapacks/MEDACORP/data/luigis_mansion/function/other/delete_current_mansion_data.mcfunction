scoreboard players set * ChangedMansion 1
scoreboard players reset @e ChangedMansion
function luigis_mansion:reset_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
data modify storage luigis_mansion:data current_state.current_data set value {nothing_loaded:1b}
scoreboard players set @a Health 100
gamemode adventure @a[gamemode=spectator]
execute unless score #loaded_exterior Selected matches -1 run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.load_mansion.start"}]}
execute unless score #loaded_exterior Selected matches -1 in minecraft:overworld run schedule function luigis_mansion:room/load_exterior/empty 5