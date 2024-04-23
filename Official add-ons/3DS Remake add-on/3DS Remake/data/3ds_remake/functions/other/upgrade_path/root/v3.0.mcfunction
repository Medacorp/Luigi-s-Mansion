execute unless data storage luigis_mansion_3ds_remake:data {data_version:2} run function 3ds_remake:other/upgrade_path/root/v3.0
data modify storage 3ds_remake:data {} merge from storage luigis_mansion_3ds_remake:data {}
data merge storage 3ds_remake:data {data_version:3}
data modify storage 3ds_remake:data new_ghosts set from storage 3ds_remake:data current_state.boos_caught
data modify storage 3ds_remake:data current_state.boos_caught set value {"minecraft:custom_data":{},3ds_remake:{}}
data modify storage 3ds_remake:data current_state.boos_caught.3ds_remake.boolldog set from storage 3ds_remake:data new_ghosts.boolldog
data remove storage 3ds_remake:data new_ghosts.boolldog
data modify storage 3ds_remake:data current_state.boos_caught.luigis_mansion set from storage 3ds_remake:data new_ghosts
data remove storage 3ds_remake:data new_ghosts
data modify storage 3ds_remake:data new_ghosts set from storage 3ds_remake:data saved_state.boos_caught
data modify storage 3ds_remake:data saved_state.boos_caught set value {"minecraft:custom_data":{},3ds_remake:{}}
data modify storage 3ds_remake:data saved_state.boos_caught.3ds_remake.boolldog set from storage 3ds_remake:data new_ghosts.boolldog
data remove storage 3ds_remake:data new_ghosts.boolldog
data modify storage 3ds_remake:data saved_state.boos_caught.luigis_mansion set from storage 3ds_remake:data new_ghosts
data remove storage 3ds_remake:data new_ghosts
#add namespace to the portrait_ghosts_defeated_in list (portrait_ghosts_defeated_in.neville -> portrait_ghosts_defeated_in.luigis_mansion.neville)
data modify storage 3ds_remake:data new_ghosts.luigis_mansion set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in set from storage 3ds_remake:data new_ghosts
data remove storage 3ds_remake:data new_ghosts
data modify storage 3ds_remake:data new_ghosts.luigis_mansion set from storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in
data modify storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in set from storage 3ds_remake:data new_ghosts
data remove storage 3ds_remake:data new_ghosts
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.neville
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.neville set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.lydia
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.lydia set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.chauncey
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.chauncey set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.floating_whirlindas
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.floating_whirlindas set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.shivers
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.shivers set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.melody_pianissima
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.melody_pianissima set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.mr_luggs
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.mr_luggs set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.spooky
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.spooky set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.bogmire
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.bogmire set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.biff_atlas
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.biff_atlas set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.miss_petunia
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.miss_petunia set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.nana
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.nana set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.slim_bankshot
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.slim_bankshot set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.henry_and_orville
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.henry_and_orville set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.madame_clairvoya
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.madame_clairvoya set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.boolossus
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.boolossus set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.uncle_grimmly
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.uncle_grimmly set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.clockwork_soldiers
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.clockwork_soldiers set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.sue_pea
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.sue_pea set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.jarvis
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.jarvis set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.sir_weston
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.sir_weston set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.vincent_van_gore
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.vincent_van_gore set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.king_boo
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.king_boo set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.neville
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.neville set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.lydia
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.lydia set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.chauncey
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.chauncey set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.floating_whirlindas
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.floating_whirlindas set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.shivers
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.shivers set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.melody_pianissima
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.melody_pianissima set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.mr_luggs
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.mr_luggs set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.spooky
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.spooky set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.bogmire
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.bogmire set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.biff_atlas
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.biff_atlas set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.miss_petunia
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.miss_petunia set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.nana
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.nana set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.slim_bankshot
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.slim_bankshot set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.henry_and_orville
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.henry_and_orville set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.madame_clairvoya
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.madame_clairvoya set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.boolossus
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.boolossus set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.uncle_grimmly
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.uncle_grimmly set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.clockwork_soldiers
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.clockwork_soldiers set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.sue_pea
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.sue_pea set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.jarvis
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.jarvis set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.sir_weston
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.sir_weston set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.vincent_van_gore
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.vincent_van_gore set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.king_boo
function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list
data modify storage 3ds_remake:data saved_state.portrait_ghosts_defeated_in.luigis_mansion.king_boo set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
scoreboard objectives remove AmiiboChoice
scoreboard objectives remove FrameChoice
scoreboard objectives remove PortraitBattle
scoreboard objectives remove SelectedFrame