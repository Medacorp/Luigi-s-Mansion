function luigis_mansion:dialog/play/portrificationizing/get_total_score
execute if score #temp Money matches ..4999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.h set value 1b
execute if score #temp Money matches 5000..19999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.g set value 1b
execute if score #temp Money matches 20000..39999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.f set value 1b
execute if score #temp Money matches 40000..49999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.e set value 1b
execute if score #temp Money matches 50000..59999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.d set value 1b
execute if score #temp Money matches 60000..69999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.c set value 1b
execute if score #temp Money matches 70000..99999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.b set value 1b
execute if score #temp Money matches 100000..129999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.a set value 1b
execute if score #temp Money matches 130000.. unless data storage luigis_mansion:data current_state.current_data{can_unlock_s_rank:1b} run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.a set value 1b
execute if score #temp Money matches 130000.. if data storage luigis_mansion:data current_state.current_data{can_unlock_s_rank:1b} run data modify storage 3ds_remake:data current_state.mansion_rank_s_achieved set value 1b

execute store result storage luigis_mansion:data dialogs[0].total int 1 run scoreboard players get #temp Money
execute if score #temp Money matches ..4999 run data modify storage luigis_mansion:data dialogs[0].rank set value "h"
execute if score #temp Money matches 5000..19999 run data modify storage luigis_mansion:data dialogs[0].rank set value "g"
execute if score #temp Money matches 20000..39999 run data modify storage luigis_mansion:data dialogs[0].rank set value "f"
execute if score #temp Money matches 40000..49999 run data modify storage luigis_mansion:data dialogs[0].rank set value "e"
execute if score #temp Money matches 50000..59999 run data modify storage luigis_mansion:data dialogs[0].rank set value "d"
execute if score #temp Money matches 60000..69999 run data modify storage luigis_mansion:data dialogs[0].rank set value "c"
execute if score #temp Money matches 70000..99999 run data modify storage luigis_mansion:data dialogs[0].rank set value "b"
execute if score #temp Money matches 100000..129999 run data modify storage luigis_mansion:data dialogs[0].rank set value "a"
execute if score #temp Money matches 130000.. unless data storage luigis_mansion:data current_state.current_data{can_unlock_s_rank:1b} run data modify storage luigis_mansion:data dialogs[0].rank set value "a"
execute if score #temp Money matches 130000.. if data storage luigis_mansion:data current_state.current_data{can_unlock_s_rank:1b} run data modify storage luigis_mansion:data dialogs[0].rank set value "s"

execute as @a[tag=same_room] at @s in luigis_mansion:exterior/rank run teleport @s ~ ~ ~ ~ ~
function luigis_mansion:room/load_exterior {namespace:"luigis_mansion",id:"rank"}
data modify storage luigis_mansion:data loaded_exterior.rank set from storage luigis_mansion:data dialogs[0].rank

execute if score #temp Money matches 1 if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:0,obtained_items:{king_boos_crown:1b}} run advancement grant @a[tag=same_room] only luigis_mansion:vanilla/spare_some_change
execute if score #temp Money matches 2 if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:1,obtained_items:{king_boos_crown:1b}} run advancement grant @a[tag=same_room] only luigis_mansion:vanilla/spare_some_change
execute if score #temp Money matches 5 if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:2,obtained_items:{king_boos_crown:1b}} run advancement grant @a[tag=same_room] only luigis_mansion:vanilla/spare_some_change
execute if score #temp Money matches 10 if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:3,obtained_items:{king_boos_crown:1b}} run advancement grant @a[tag=same_room] only luigis_mansion:vanilla/spare_some_change
execute if score #temp Money matches 142390.. run advancement grant @a[tag=same_room] only luigis_mansion:vanilla/making_wario_jealous
execute if score #temp Money matches 186440.. run advancement grant @a[tag=same_room] only luigis_mansion:vanilla/scrooge_mcduck_it_up
execute if score #temp Money matches 70000.. if data storage 3ds_remake:data current_state.trophy.normal{task_7:0b} run function 3ds_remake:selection_menu/gallery_trophy/complete/normal/task_7
execute if score #temp Money matches 100000.. if data storage 3ds_remake:data current_state.trophy.hard{task_4:0b} run function 3ds_remake:selection_menu/gallery_trophy/complete/hard/task_4
execute if score #temp Money matches 130000.. if data storage luigis_mansion:data current_state.current_data{can_unlock_s_rank:1b} if data storage 3ds_remake:data current_state.trophy.master{task_4:0b} run function 3ds_remake:selection_menu/gallery_trophy/complete/master/task_4
scoreboard players reset #temp Money
