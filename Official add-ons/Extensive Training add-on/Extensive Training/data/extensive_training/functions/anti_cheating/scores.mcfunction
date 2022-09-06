execute unless score #e_gadd_amiibo Selected matches 0..1 run scoreboard players set #e_gadd_amiibo Selected 0
execute unless score #koopa_amiibo Selected matches 0..1 run scoreboard players set #koopa_amiibo Selected 0
execute if data storage extensive_training:data current_state.trophy{done:0b} run scoreboard players set #koopa_amiibo Selected 0