execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.nana{loot_at_0:1b} run function luigis_mansion:entities/nana/drop_loot
execute store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.nana.health int 1 run scoreboard players set @s Health 0
execute store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.nana.top_vacuum_damage int 1 run scoreboard players get @s TopVacuumDamage
function #luigis_mansion:entities/nana/at_death