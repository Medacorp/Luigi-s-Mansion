scoreboard players operation #extensive_training Loaded > * Loaded
scoreboard players add #extensive_training Loaded 1

scoreboard players set #training_choice Selected 1
function extensive_training:anti_cheating/scores

execute unless data storage extensive_training:data current_state run function extensive_training:other/upgrade_path/newly_installed