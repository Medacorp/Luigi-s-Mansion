execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.henry_and_orville.henry{loot_at_0:1b} run function luigis_mansion:entities/henry/drop_loot
execute store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.henry_and_orville.henry.health int 1 run scoreboard players set @s Health 0
execute store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.henry_and_orville.henry.top_vacuum_damage int 1 run scoreboard players get @s TopVacuumDamage
function #luigis_mansion:entities/henry/at_death