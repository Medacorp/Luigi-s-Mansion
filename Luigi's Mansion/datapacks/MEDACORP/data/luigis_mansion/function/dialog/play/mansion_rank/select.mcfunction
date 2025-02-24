function luigis_mansion:dialog/play/portrificationizing/get_total_score
execute if score #temp Money matches ..4999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.h set value 1b
execute if score #temp Money matches 5000..19999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.g set value 1b
execute if score #temp Money matches 20000..39999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.f set value 1b
execute if score #temp Money matches 40000..49999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.e set value 1b
execute if score #temp Money matches 50000..59999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.d set value 1b
execute if score #temp Money matches 60000..69999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.c set value 1b
execute if score #temp Money matches 70000..149999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.b set value 1b
execute if score #temp Money matches 150000.. run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.a set value 1b

execute store result storage luigis_mansion:data dialogs[0].total int 1 run scoreboard players get #temp Money
execute if score #temp Money matches ..4999 run data modify storage luigis_mansion:data dialogs[0].rank set value "h"
execute if score #temp Money matches 5000..19999 run data modify storage luigis_mansion:data dialogs[0].rank set value "g"
execute if score #temp Money matches 20000..39999 run data modify storage luigis_mansion:data dialogs[0].rank set value "f"
execute if score #temp Money matches 40000..49999 run data modify storage luigis_mansion:data dialogs[0].rank set value "e"
execute if score #temp Money matches 50000..59999 run data modify storage luigis_mansion:data dialogs[0].rank set value "d"
execute if score #temp Money matches 60000..69999 run data modify storage luigis_mansion:data dialogs[0].rank set value "c"
execute if score #temp Money matches 70000..149999 run data modify storage luigis_mansion:data dialogs[0].rank set value "b"
execute if score #temp Money matches 150000.. run data modify storage luigis_mansion:data dialogs[0].rank set value "a"

execute if score #temp Money matches ..4999 run function luigis_mansion:room/load_exterior {namespace:"luigis_mansion",id:"h"}
execute if score #temp Money matches 5000..19999 run function luigis_mansion:room/load_exterior {namespace:"luigis_mansion",id:"g"}
execute if score #temp Money matches 20000..39999 run function luigis_mansion:room/load_exterior {namespace:"luigis_mansion",id:"f"}
execute if score #temp Money matches 40000..49999 run function luigis_mansion:room/load_exterior {namespace:"luigis_mansion",id:"e"}
execute if score #temp Money matches 50000..59999 run function luigis_mansion:room/load_exterior {namespace:"luigis_mansion",id:"d"}
execute if score #temp Money matches 60000..69999 run function luigis_mansion:room/load_exterior {namespace:"luigis_mansion",id:"c"}
execute if score #temp Money matches 70000..149999 run function luigis_mansion:room/load_exterior {namespace:"luigis_mansion",id:"b"}
execute if score #temp Money matches 150000.. run function luigis_mansion:room/load_exterior {namespace:"luigis_mansion",id:"a"}

execute if score #temp Money matches 1 if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:0,obtained_items:{king_boos_crown:1b}} run advancement grant @a[tag=same_room] only luigis_mansion:vanilla/spare_some_change
execute if score #temp Money matches 2 if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:1,obtained_items:{king_boos_crown:1b}} run advancement grant @a[tag=same_room] only luigis_mansion:vanilla/spare_some_change
execute if score #temp Money matches 5 if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:2,obtained_items:{king_boos_crown:1b}} run advancement grant @a[tag=same_room] only luigis_mansion:vanilla/spare_some_change
execute if score #temp Money matches 10 if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:3,obtained_items:{king_boos_crown:1b}} run advancement grant @a[tag=same_room] only luigis_mansion:vanilla/spare_some_change
execute if score #temp Money matches 142390.. run advancement grant @a[tag=same_room] only luigis_mansion:vanilla/making_wario_jealous
execute if score #temp Money matches 186440.. run advancement grant @a[tag=same_room] only luigis_mansion:vanilla/scrooge_mcduck_it_up
scoreboard players reset #temp Money
