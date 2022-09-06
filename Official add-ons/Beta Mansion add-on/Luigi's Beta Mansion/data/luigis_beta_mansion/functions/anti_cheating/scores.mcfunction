scoreboard objectives add OverheatMeter dummy

execute unless score #poltergust_500 Selected matches 0..1 run scoreboard players set #poltergust_500 Selected 0
execute unless score #e_gadd_amiibo Selected matches 0..1 run scoreboard players set #e_gadd_amiibo Selected 0
execute if data storage luigis_beta_mansion:data current_state.trophy{done:0b} run scoreboard players set #e_gadd_amiibo Selected 0