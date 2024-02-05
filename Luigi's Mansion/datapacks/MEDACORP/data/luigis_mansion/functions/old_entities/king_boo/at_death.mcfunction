execute unless data entity @s ArmorItems[3].tag.luigis_mansion.loot{drop_at_0:1b} run function luigis_mansion:other/drop_loot
execute store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.king_boo.health int 1 run scoreboard players set @s Health 0
function #luigis_mansion:entities/king_boo/at_death