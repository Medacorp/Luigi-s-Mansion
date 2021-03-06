data modify storage luigis_mansion:data {} merge value {data_version:3,inventories:[],ghost_nr:0,passive_nr:0,elemental_source_nr:0,luigi_colors:[],luigi:{gliding:0b,swimming:0b,invulnerable:0b,animation:0b,pulled:0,mainhand:{},offhand:{},tags:[]},mirror:{},entered_mansion:0b,used_parlor_key:0b,obtained_parlor_key:0b,found_e_gadd:0b,rooms:{underground_lab:{seen:0b,cleared:0b},training_room:{seen:0b,cleared:0b},ghost_portrificationizer_room:{seen:0b,cleared:0b},gallery:{seen:0b,cleared:0b}},saved_state:{mansion_data:[],high_scores:[],mansion_ranks_achieved:{a:0b,b:0b,c:0b,d:0b,e:0b,f:0b,g:0b,h:0b},ghosts_caught:[],money_grabbed:[],portrait_ghost_ranks:{neville:-1b,lydia:-1b,chauncey:-1b,floating_whirlindas:-1b,shivers:-1b,melody_pianissima:-1b,mr_luggs:-1b,spooky:-1b,bogmire:-1b,biff_atlas:-1b,miss_petunia:-1b,nana:-1b,slim_bankshot:-1b,henry_and_orville:-1b,madame_clairvoya:-1b,boolossus:-1b,uncle_grimmly:-1b,clockwork_soldiers:-1b,sue_pea:-1b,jarvis:-1b,sir_weston:-1b,vincent_van_gore:-1b,king_boo:-1b}},current_state:{mansion_data:[],high_scores:[],mansion_ranks_achieved:{a:0b,b:0b,c:0b,d:0b,e:0b,f:0b,g:0b,h:0b},ghosts_caught:[],money_grabbed:[],portrait_ghost_ranks:{neville:-1b,lydia:-1b,chauncey:-1b,floating_whirlindas:-1b,shivers:-1b,melody_pianissima:-1b,mr_luggs:-1b,spooky:-1b,bogmire:-1b,biff_atlas:-1b,miss_petunia:-1b,nana:-1b,slim_bankshot:-1b,henry_and_orville:-1b,madame_clairvoya:-1b,boolossus:-1b,uncle_grimmly:-1b,clockwork_soldiers:-1b,sue_pea:-1b,jarvis:-1b,sir_weston:-1b,vincent_van_gore:-1b,king_boo:-1b},current_data:{}}}
function luigis_mansion:room/normal/load_data
forceload add 749 -66 615 81
execute positioned 720 102 7 rotated -90 0 run function luigis_mansion:spawn_furniture/door/left/pull/mansion/entrance
execute positioned 720 102 7 rotated -90 0 run function luigis_mansion:spawn_furniture/door_frame/double_basic
execute positioned 720 102 8 rotated -90 0 run function luigis_mansion:spawn_furniture/door/right/push/mansion/entrance
execute positioned 720 102 8 rotated -90 0 run function luigis_mansion:spawn_furniture/door_frame/double_basic
scoreboard players set @e[x=720.5,y=102,z=8.0,distance=..3,tag=door] Room 0
forceload remove 749 -66 615 81
function luigis_mansion:room/normal/default_data
forceload add 4859 -101 4668 83
forceload add 27 0 27 0
function luigis_mansion:data/save