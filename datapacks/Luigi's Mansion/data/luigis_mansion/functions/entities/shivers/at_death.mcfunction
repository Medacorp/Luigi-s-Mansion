execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.shivers{loot_at_0:1b} run function luigis_mansion:entities/shivers/drop_loot
particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.6 0.2 1 30
teleport @s ~ -100 ~
execute store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.shivers.health int 1 run scoreboard players set @s Health 0
function #luigis_mansion:entities/shivers/at_death