execute unless data entity @s ArmorItems[3].tag.loot{drop_at_0:1b} run function luigis_mansion:other/drop_loot
execute store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.spooky.health int 1 run scoreboard players set @s Health 0
execute store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.spooky.top_vacuum_damage int 1 run scoreboard players get @s TopVacuumDamage
function #luigis_mansion:entities/spooky/at_death