function luigis_mansion:other/drop_loot
execute store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.boolossus.health int 1 if entity @e[tag=boolossus,tag=!dead,limit=1]
function #luigis_mansion:entities/boolossus/at_death
execute unless entity @e[tag=boolossus,tag=!dead,limit=1] run data modify storage luigis_mansion_3ds_remake:data portrait_ghost set from storage luigis_mansion_3ds_remake:data current_state.portrait_ghosts_defeated_in.boolossus
execute unless entity @e[tag=boolossus,tag=!dead,limit=1] run function luigis_mansion_3ds_remake:other/save_portrait_ghost_defeat
execute unless entity @e[tag=boolossus,tag=!dead,limit=1] run data modify storage luigis_mansion_3ds_remake:data current_state.portrait_ghosts_defeated_in.boolossus set from storage luigis_mansion_3ds_remake:data portrait_ghost
execute unless entity @e[tag=boolossus,tag=!dead,limit=1] run data remove storage luigis_mansion_3ds_remake:data portrait_ghost