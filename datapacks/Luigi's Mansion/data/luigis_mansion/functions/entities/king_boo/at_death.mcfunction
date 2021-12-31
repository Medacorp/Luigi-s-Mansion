execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.king_boo{loot_at_0:1b} run function luigis_mansion:entities/king_boo/drop_loot
execute store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.king_boo.health int 1 run scoreboard players set @s Health 0
function #luigis_mansion:entities/king_boo/at_death