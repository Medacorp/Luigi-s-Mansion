execute unless score #e_gadd_amiibo Selected matches 0..1 run scoreboard players set #e_gadd_amiibo Selected 0
execute unless score #koopa_amiibo Selected matches 0..1 run scoreboard players set #koopa_amiibo Selected 0
execute if data storage luigis_mansion:data current_state.extensive_training.trophy{done:0b} run scoreboard players set #koopa_amiibo Selected 0

execute if data storage luigis_mansion:data current_state.luigis_mansion unless data storage luigis_mansion:data current_state.extensive_training run function extensive_training:other/upgrade_path/newly_installed