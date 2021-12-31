execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.bogmire{loot_at_0:1b} run function luigis_mansion:entities/bogmire/drop_loot
execute store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.bogmire.health int 1 run scoreboard players set @s Health 0
function #luigis_mansion:entities/bogmire/at_death