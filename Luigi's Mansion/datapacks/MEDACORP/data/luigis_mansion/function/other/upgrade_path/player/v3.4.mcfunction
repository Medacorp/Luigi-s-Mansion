execute unless entity @s[scores={UpgradePlayer=6}] run function luigis_mansion:other/upgrade_path/player/v3.3
scoreboard players set @s UpgradePlayer 7
execute if data storage luigis_mansion:data current_state.current_data.rooms.technical_data{saw_mario:1b} run advancement grant @s only luigis_mansion:jukebox/marios_portrait
execute if data storage luigis_mansion:data current_state.current_data.rooms.technical_data{saw_mario:1b} run advancement grant @s only luigis_mansion:jukebox/marios_portrait_short
execute if data storage luigis_mansion:data current_state.high_scores[{data_index:0}] run advancement grant @s only luigis_mansion:jukebox/marios_portrait
execute if data storage luigis_mansion:data current_state.high_scores[{data_index:0}] run advancement grant @s only luigis_mansion:jukebox/marios_portrait_short
execute if data storage luigis_mansion:data current_state.high_scores[{data_index:0}] run advancement grant @s only luigis_mansion:jukebox/collect_marios_portrait