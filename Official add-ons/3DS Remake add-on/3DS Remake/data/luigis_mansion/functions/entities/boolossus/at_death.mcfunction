function luigis_mansion:other/drop_loot
execute store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.boolossus.health int 1 if entity @e[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"boolossus"}}]},tag=!dead]
function #luigis_mansion:entities/boolossus/at_death
execute unless entity @e[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"boolossus"}}]},tag=!dead,limit=1] run data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.boolossus
execute unless entity @e[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"boolossus"}}]},tag=!dead,limit=1] run function 3ds_remake:other/save_portrait_ghost_defeat
execute unless entity @e[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"boolossus"}}]},tag=!dead,limit=1] run data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.boolossus set from storage 3ds_remake:data portrait_ghost
execute unless entity @e[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"boolossus"}}]},tag=!dead,limit=1] run data remove storage 3ds_remake:data portrait_ghost