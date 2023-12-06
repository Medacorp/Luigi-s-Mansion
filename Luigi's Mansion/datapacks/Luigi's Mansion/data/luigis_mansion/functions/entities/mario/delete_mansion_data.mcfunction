scoreboard players set * ChangedMansion 1
scoreboard players reset @e ChangedMansion
function #luigis_mansion:mansion_reset
data modify storage luigis_mansion:data current_state.current_data set value {nothing_loaded:1b}
scoreboard players set @a Health 100
gamemode adventure @a[gamemode=spectator]
execute unless score #loaded_exterior Selected matches -1 in minecraft:overworld run function luigis_mansion:room/load_exterior/empty