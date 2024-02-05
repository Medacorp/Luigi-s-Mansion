execute unless data entity @s ArmorItems[3].tag.luigis_mansion.loot{drop_at_0:1b} run function luigis_mansion:other/drop_loot
execute store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.vincent_van_gore.health int 1 run scoreboard players set @s Health 0
execute store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.vincent_van_gore.top_vacuum_damage int 1 run scoreboard players get @s TopVacuumDamage
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.vincent_van_gore
function 3ds_remake:other/save_portrait_ghost_defeat
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.vincent_van_gore set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
function #luigis_mansion:entities/vincent_van_gore/at_death