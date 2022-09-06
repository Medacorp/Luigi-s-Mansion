scoreboard players operation #beta_mansion Loaded > * Loaded
scoreboard players add #beta_mansion Loaded 1

function luigis_beta_mansion:anti_cheating/scores

execute unless data storage luigis_beta_mansion:data current_state run function luigis_beta_mansion:other/upgrade_path/newly_installed
advancement grant @a only luigis_beta_mansion:lab/unlocked_original_mansion
execute if data storage luigis_mansion:data current_state.high_scores[{data_index:2}] run advancement grant @a only luigis_beta_mansion:lab/cleared_original_mansion