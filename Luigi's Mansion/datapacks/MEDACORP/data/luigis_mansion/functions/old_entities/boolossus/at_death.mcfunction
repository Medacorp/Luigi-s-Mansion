function luigis_mansion:other/drop_loot
execute store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.boolossus.health int 1 if entity @e[nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"boolossus"}}}}]},tag=!dead]
function #luigis_mansion:entities/boolossus/at_death