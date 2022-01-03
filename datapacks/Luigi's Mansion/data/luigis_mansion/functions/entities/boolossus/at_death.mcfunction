function luigis_mansion:entities/boolossus/drop_loot
execute store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.boolossus.health int 1 if entity @e[tag=boolossus,tag=!captured,limit=1]
function #luigis_mansion:entities/boolossus/at_death