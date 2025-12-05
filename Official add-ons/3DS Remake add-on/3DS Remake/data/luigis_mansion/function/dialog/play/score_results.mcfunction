execute if score #dialog Dialog matches 331..332 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 332 if data storage luigis_mansion:data dialogs[0].ending run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 229..330 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 312..330 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 331
execute if score #dialog Dialog matches 272..310 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 311
execute if score #dialog Dialog matches 231..269 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 270
execute if score #dialog Dialog matches 228 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 148..227 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 208..228 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 228
execute if score #dialog Dialog matches 188..207 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 208
execute if score #dialog Dialog matches 168..187 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 188
execute if score #dialog Dialog matches 148..167 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 168
execute if score #dialog Dialog matches 146..147 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 145 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 144 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 142 unless entity @e[tag=portrificationized_portrait,tag=!suspended,tag=!done_animating,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..141 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 111..140 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 141
execute if score #dialog Dialog matches 1.. if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 272
execute if score #dialog Dialog matches 81..250 as @a[tag=same_room,tag=!spectator] unless entity @s[tag=dialog_menu,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 251 as @a[tag=same_room,tag=!spectator,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/choice/save
execute if score #dialog Dialog matches 252 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches ..147 store result score #temp Time run data get storage luigis_mansion:data dialogs[0].counter
execute if score #dialog Dialog matches 148.. store result score #temp Time run data get storage luigis_mansion:data dialogs[0].counter 10

execute if score #dialog Dialog matches 1 run function luigis_mansion:dialog/play/score_results/get_data with storage luigis_mansion:data current_state.current_data.mansion_id
execute if score #dialog Dialog matches 1 store result storage luigis_mansion:data dialogs[0].areas int 1 run data get storage luigis_mansion:data dialogs[0].portraits.area
execute if score #dialog Dialog matches 1..22 as @a[tag=same_room] run function luigis_mansion:other/music/set/non_overwritten_silence
execute if score #dialog Dialog matches 1 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.show_item.high_health",medium:"luigis_mansion:entity.player.show_item.high_health",low:"luigis_mansion:entity.player.show_item.low_health",duration:20}
execute if score #dialog Dialog matches 1 as @a[tag=same_room] run playsound luigis_mansion:ambience.spotlight ambient @s ~ ~ ~ 1
execute if score #dialog Dialog matches 23 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/move/teleport {teleport:"757 77 -7 170 0"}
execute if score #dialog Dialog matches 23..251 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"762 78.5 -10 90 0"}
execute if score #dialog Dialog matches 23 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 23..1338 as @a[tag=same_room] run function luigis_mansion:other/music/set/portraits
execute if score #dialog Dialog matches 23 run fill 754 77 -13 754 82 -10 minecraft:brown_mushroom_block[north=false,east=false,south=false,west=false,up=false,down=false]
execute if score #dialog Dialog matches 23 run fill 754 78 -14 754 81 -9 minecraft:brown_mushroom_block[north=false,east=false,south=false,west=false,up=false,down=false]

execute if score #dialog Dialog matches 80 unless data storage luigis_mansion:data dialogs[0].portraits.new[0] run scoreboard players set #dialog Dialog 148
execute if score #dialog Dialog matches 80 if score #players Totals matches 1 run summon minecraft:text_display 756 83 -7 {Tags:["ghosts_caught_header","fade_in"],text:{type:"translatable",translate:"luigis_mansion:dialog.ghost_portrificationizer_room.results.caught"},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:0b,Rotation:[-90.0f,0.0f]}
execute if score #dialog Dialog matches 80 if score #players Totals matches 2.. run summon minecraft:text_display 756 83 -7 {Tags:["ghosts_caught_header","fade_in"],text:{type:"translatable",translate:"luigis_mansion:dialog.ghost_portrificationizer_room.results.caught.more"},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:0b,Rotation:[-90.0f,0.0f]}
execute if score #dialog Dialog matches 80 run scoreboard players set @e[tag=ghosts_caught_header,limit=1] Room -3
execute if score #dialog Dialog matches 80 positioned 755.5 80.0 -26.0 run function luigis_mansion:dialog/play/score_results/spawn_portraits_new_area
execute if score #dialog Dialog matches 80 run data modify storage luigis_mansion:data dialogs[0].counter set value 0
execute if score #dialog Dialog matches 81 unless entity @e[tag=portrificationized_portrait,tag=suspended,limit=1] run scoreboard players set #dialog Dialog 144
execute if score #dialog Dialog matches 81 run scoreboard players remove @e[tag=move_with_area] Dialog 1
execute if score #dialog Dialog matches 81..110 as @e[tag=move_with_area,scores={Dialog=..0}] at @s run teleport @s ~ ~ ~0.5
execute if score #dialog Dialog matches 110 run tag @e[tag=move_with_area,scores={Dialog=..-1}] add remove_from_existence
execute if score #dialog Dialog matches 110 positioned 755.5 90.0 -11.0 unless entity @e[tag=portrificationized_portrait,tag=suspended,distance=..7,limit=1] run scoreboard players set #dialog Dialog 80
execute if score #dialog Dialog matches 110 run scoreboard players set #dialog Dialog 141
execute if score #dialog Dialog matches 141 positioned 755.5 90.0 -11.0 unless entity @e[tag=portrificationized_portrait,tag=suspended,distance=..7,limit=1] run scoreboard players set #dialog Dialog 80
execute if score #dialog Dialog matches 141 run data modify entity @e[tag=portrificationized_portrait_text,tag=!shown,limit=1] text_opacity set value -1b
execute if score #dialog Dialog matches 141 run tag @e[tag=portrificationized_portrait,tag=suspended,limit=1] remove suspended
execute if score #dialog Dialog matches 142 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tag @e[tag=portrificationized_portrait,tag=!suspended,tag=!done_animating,limit=1] add finish_animating
execute if score #dialog Dialog matches 143 run tag @e[tag=portrificationized_portrait_text,tag=!shown,limit=1] add fade_in
execute if score #dialog Dialog matches 143 run teleport @e[tag=portrificationized_portrait_text,tag=!shown,limit=1] 756 80.85 -7
execute if score #dialog Dialog matches 143 run tag @e[tag=portrificationized_portrait_text,tag=!shown,limit=1] add shown
execute if score #dialog Dialog matches 143 run scoreboard players set #dialog Dialog 111
execute if score #dialog Dialog matches ..144 as @e[tag=portrificationized_portrait_text,tag=shown] at @s run teleport @s ~ ~-0.05 ~
execute if score #dialog Dialog matches ..144 run tag @e[tag=portrificationized_portrait_text,tag=shown,tag=!fade_in] add fade_out
#144
execute if score #dialog Dialog matches 145 run data modify storage luigis_mansion:data dialogs[0].counter set value 0
execute if score #dialog Dialog matches 145 run tag @e[type=minecraft:text_display,scores={Room=-3}] add fade_out
execute if score #dialog Dialog matches 145 if score #players Totals matches 1 run summon minecraft:text_display 756 83 -7 {Tags:["ghost_counter","fade_in"],text:{type:"translatable",translate:"luigis_mansion:dialog.ghost_portrificationizer_room.results.ghosts.0"},billboard:"fixed",line_width:120,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:0b,Rotation:[-90.0f,0.0f]}
execute if score #dialog Dialog matches 145 if score #players Totals matches 2.. run summon minecraft:text_display 756 83 -7 {Tags:["ghost_counter","fade_in"],text:{type:"translatable",translate:"luigis_mansion:dialog.ghost_portrificationizer_room.results.ghosts.0.more"},billboard:"fixed",line_width:120,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:0b,Rotation:[-90.0f,0.0f]}
execute if score #dialog Dialog matches 145 run scoreboard players set @e[tag=ghost_counter,limit=1] Room -3
execute if score #dialog Dialog matches 146..147 store result score #temp2 Dialog run data get storage luigis_mansion:data dialogs[0].portraits.total
execute if score #dialog Dialog matches 147 store result storage luigis_mansion:data dialogs[0].counter int 1 run scoreboard players get #temp2 Dialog
execute if score #dialog Dialog matches 146..147 if score #temp Time matches 1 if score #players Totals matches 1 run data modify entity @e[tag=ghost_counter,limit=1] text set value {type:"translatable",translate:"luigis_mansion:dialog.ghost_portrificationizer_room.results.ghosts.1"}
execute if score #dialog Dialog matches 146..147 if score #temp Time matches 1 if score #players Totals matches 2.. run data modify entity @e[tag=ghost_counter,limit=1] text set value {type:"translatable",translate:"luigis_mansion:dialog.ghost_portrificationizer_room.results.ghosts.1.more"}
execute if score #dialog Dialog matches 146..147 if score #temp Time matches 2.. if score #players Totals matches 1 run data modify entity @e[tag=ghost_counter,limit=1] text set value {type:"translatable",translate:"luigis_mansion:dialog.ghost_portrificationizer_room.results.ghosts",with:[{score:{name:"#temp",objective:"Time"}}]}
execute if score #dialog Dialog matches 146..147 if score #temp Time matches 2.. if score #players Totals matches 2.. run data modify entity @e[tag=ghost_counter,limit=1] text set value {type:"translatable",translate:"luigis_mansion:dialog.ghost_portrificationizer_room.results.ghosts.more",with:[{score:{name:"#temp",objective:"Time"}}]}
execute if score #dialog Dialog matches 146 if score #temp Time matches 1 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 1
execute if score #dialog Dialog matches 146 if score #temp Time matches 2 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 1.045
execute if score #dialog Dialog matches 146 if score #temp Time matches 3 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 1.09
execute if score #dialog Dialog matches 146 if score #temp Time matches 4 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 1.135
execute if score #dialog Dialog matches 146 if score #temp Time matches 5 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 1.180
execute if score #dialog Dialog matches 146 if score #temp Time matches 6 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 1.225
execute if score #dialog Dialog matches 146 if score #temp Time matches 7 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 1.27
execute if score #dialog Dialog matches 146 if score #temp Time matches 8 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 1.315
execute if score #dialog Dialog matches 146 if score #temp Time matches 9 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 1.36
execute if score #dialog Dialog matches 146 if score #temp Time matches 10 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 1.405
execute if score #dialog Dialog matches 146 if score #temp Time matches 11 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 1.45
execute if score #dialog Dialog matches 146 if score #temp Time matches 12 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 1.495
execute if score #dialog Dialog matches 146 if score #temp Time matches 13 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 1.54
execute if score #dialog Dialog matches 146 if score #temp Time matches 14 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 1.585
execute if score #dialog Dialog matches 146 if score #temp Time matches 15 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 1.63
execute if score #dialog Dialog matches 146 if score #temp Time matches 16 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 1.675
execute if score #dialog Dialog matches 146 if score #temp Time matches 17 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 1.72
execute if score #dialog Dialog matches 146 if score #temp Time matches 18 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 1.765
execute if score #dialog Dialog matches 146 if score #temp Time matches 19 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 1.81
execute if score #dialog Dialog matches 146 if score #temp Time matches 20 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 1.855
execute if score #dialog Dialog matches 146 if score #temp Time matches 21 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 1.9
execute if score #dialog Dialog matches 146 if score #temp Time matches 22 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 1.945
execute if score #dialog Dialog matches 146 if score #temp Time matches 23 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 1.99
execute if score #dialog Dialog matches 146 if score #temp Time matches 24.. as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 2
execute if score #dialog Dialog matches 146 if score #temp Time = #temp2 Dialog run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 146 if score #temp Time < #temp2 Dialog store result storage luigis_mansion:data dialogs[0].counter int 1 run scoreboard players add #temp Time 1
#147
execute if score #dialog Dialog matches 148 run fill 754 77 -13 754 82 -10 minecraft:black_concrete
execute if score #dialog Dialog matches 148 run fill 754 78 -14 754 81 -9 minecraft:black_concrete
execute if score #dialog Dialog matches 148 run tag @e[type=minecraft:text_display,scores={Room=-3}] add fade_out
execute if score #dialog Dialog matches 148 run tag @e[tag=move_with_area,type=!minecraft:text_display,scores={Room=-3}] add remove_from_existence
execute if score #dialog Dialog matches 148 run data modify storage luigis_mansion:data dialogs[0].counter set value 0d
execute if score #dialog Dialog matches 148 unless data storage luigis_mansion:data current_state.current_data.last_area_portrificationized run scoreboard players add #dialog Dialog 230
execute if score #dialog Dialog matches 148 run summon minecraft:text_display 756 83 -7 {Tags:["results_header","fade_in"],text:{type:"translatable",translate:"3ds_remake:dialog.ghost_portrificationizer_room.results.new"},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:0b,Rotation:[-90.0f,0.0f]}
execute if score #dialog Dialog matches 148 run scoreboard players set @e[tag=results_header,limit=1] Room -3
execute if score #dialog Dialog matches 148..311 store result score #area Time run data get storage luigis_mansion:data current_state.current_data.area
execute if score #dialog Dialog matches 148..311 store result score #areas Time run data get storage luigis_mansion:data current_state.current_data.last_area_portrificationized
execute if score #dialog Dialog matches 168 store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.in_mansion_time
execute if score #dialog Dialog matches 168 store result score #temp2 Time run data get storage luigis_mansion:data current_state.current_data.previous_area_score.time
execute if score #dialog Dialog matches 168 unless score #area Time = #areas Time run data modify storage luigis_mansion:data current_state.current_data.previous_area_score.time set from storage luigis_mansion:data current_state.current_data.in_mansion_time
execute if score #dialog Dialog matches 168 run scoreboard players operation #temp Time -= #temp2 Time
execute if score #dialog Dialog matches 188 run function 3ds_remake:dialog/play/score_results/get_ghosts_caught
execute if score #dialog Dialog matches 188 store result score #temp2 Time run data get storage luigis_mansion:data current_state.current_data.previous_area_score.ghosts
execute if score #dialog Dialog matches 188 unless score #area Time = #areas Time store result storage luigis_mansion:data current_state.current_data.previous_area_score.ghosts int 1 run scoreboard players get #temp Time
execute if score #dialog Dialog matches 188 run scoreboard players operation #temp Time -= #temp2 Time
execute if score #dialog Dialog matches 208 run function 3ds_remake:dialog/play/score_results/get_money
execute if score #dialog Dialog matches 208 store result score #temp2 Time run data get storage luigis_mansion:data current_state.current_data.previous_area_score.money
execute if score #dialog Dialog matches 208 unless score #area Time = #areas Time store result storage luigis_mansion:data current_state.current_data.previous_area_score.money int 1 run scoreboard players get #temp Time
execute if score #dialog Dialog matches 208 run scoreboard players operation #temp Time -= #temp2 Time
execute if score #dialog Dialog matches 148..311 run data modify storage luigis_mansion:data macro set value {area:0,index:0}
execute if score #dialog Dialog matches 148..311 run data modify storage luigis_mansion:data macro.index set from storage luigis_mansion:data current_state.current_data.data_index
execute if score #dialog Dialog matches 148..311 run scoreboard players remove #area Time 1
execute if score #dialog Dialog matches 148..311 store result storage luigis_mansion:data macro.area int 1 run scoreboard players operation #area Time > #areas Time
execute if score #dialog Dialog matches 148 if score #area Time matches 1.. run summon minecraft:text_display 756 82.7 -7 {Tags:["area_header","fade_in"],text:{type:"translatable",translate:"luigis_mansion:dialog.ghost_portrificationizer_room.results.area",with:[{type:"score",score:{name:"#area",objective:"Time"}}]},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:0b,Rotation:[-90.0f,0.0f]}
execute if score #dialog Dialog matches 148 if score #area Time matches 1.. run scoreboard players set @e[tag=area_header,limit=1] Room -3
execute if score #dialog Dialog matches 168 run function 3ds_remake:dialog/play/score_results/convert_time
execute if score #dialog Dialog matches 168 run summon minecraft:text_display 756 82.4 -7 {Tags:["results_time","fade_in"],text:{type:"translatable",translate:"3ds_remake:dialog.ghost_portrificationizer_room.results.time",with:[{type:"score",score:{name:"#temp6",objective:"Time"}},{type:"score",score:{name:"#temp5",objective:"Time"}},{type:"score",score:{name:"#temp4",objective:"Time"}},{type:"score",score:{name:"#temp3",objective:"Time"}},{type:"score",score:{name:"#temp2",objective:"Time"}},{type:"score",score:{name:"#temp",objective:"Time"}}]},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:0b,Rotation:[-90.0f,0.0f]}
execute if score #dialog Dialog matches 168 run scoreboard players set @e[tag=results_time,limit=1] Room -3
execute if score #dialog Dialog matches 168 run scoreboard players reset #temp3 Time
execute if score #dialog Dialog matches 168 run scoreboard players reset #temp4 Time
execute if score #dialog Dialog matches 168 run scoreboard players reset #temp5 Time
execute if score #dialog Dialog matches 168 run scoreboard players reset #temp6 Time
execute if score #dialog Dialog matches 188 run summon minecraft:text_display 756 82.1 -7 {Tags:["results_ghosts","fade_in"],text:{type:"translatable",translate:"3ds_remake:dialog.ghost_portrificationizer_room.results.ghosts",with:[{type:"score",score:{name:"#temp",objective:"Time"}}]},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:0b,Rotation:[-90.0f,0.0f]}
execute if score #dialog Dialog matches 188 run scoreboard players set @e[tag=results_ghosts,limit=1] Room -3
execute if score #dialog Dialog matches 188 run scoreboard players reset #temp Time
execute if score #dialog Dialog matches 208 run summon minecraft:text_display 756 81.8 -7 {Tags:["results_treasures","fade_in"],text:{type:"translatable",translate:"3ds_remake:dialog.ghost_portrificationizer_room.results.treasures",with:[{type:"score",score:{name:"#temp",objective:"Time"}}]},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:0b,Rotation:[-90.0f,0.0f]}
execute if score #dialog Dialog matches 208 run scoreboard players set @e[tag=results_treasures,limit=1] Room -3
execute if score #dialog Dialog matches 208 if score #area Time matches 1.. run function 3ds_remake:dialog/play/score_results/get_area_records with storage luigis_mansion:data macro
execute if score #dialog Dialog matches 208 if score #area Time matches 1.. run summon minecraft:text_display 756 81.2 -7 {Tags:["results_footer","fade_in"],text:{type:"translatable",translate:"3ds_remake:dialog.ghost_portrificationizer_room.results.high_score.area"},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:0b,Rotation:[-90.0f,0.0f]}
execute if score #dialog Dialog matches 208 if score #area Time matches 1.. run scoreboard players set @e[tag=results_footer,limit=1] Room -3
execute if score #dialog Dialog matches 208 if score #area Time matches 1.. run summon minecraft:text_display 756 80.9 -7 {Tags:["area_footer","fade_in"],text:{type:"translatable",translate:"luigis_mansion:dialog.ghost_portrificationizer_room.results.area",with:[{type:"score",score:{name:"#area",objective:"Time"}}]},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:0b,Rotation:[-90.0f,0.0f]}
execute if score #dialog Dialog matches 208 if score #area Time matches 1.. run scoreboard players set @e[tag=area_footer,limit=1] Room -3
execute if score #dialog Dialog matches 208 if score #area Time matches 1.. run scoreboard players operation #only Time > #temp Time
execute if score #dialog Dialog matches 208 if score #area Time matches 1.. run summon minecraft:text_display 756 80.6 -7 {Tags:["area_best","fade_in"],text:{type:"translatable",translate:"3ds_remake:dialog.ghost_portrificationizer_room.results.value",with:[{type:"score",score:{name:"#only",objective:"Time"}}]},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:0b,Rotation:[-90.0f,0.0f]}
execute if score #dialog Dialog matches 208 if score #area Time matches 1.. if score #only Time matches 0 run data modify entity @e[tag=area_best,limit=1] text set value {type:"translatable",translate:"3ds_remake:dialog.ghost_portrificationizer_room.results.no_money"}
execute if score #dialog Dialog matches 208 if score #area Time matches 1.. run scoreboard players set @e[tag=area_best,limit=1] Room -3
execute if score #dialog Dialog matches 208 if score #area Time matches 1.. run function 3ds_remake:dialog/play/score_results/save_only_record with storage luigis_mansion:data macro
execute if score #dialog Dialog matches 208 run scoreboard players reset #total Time
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
#228
execute if score #dialog Dialog matches 229 if score #players Totals matches 1 run summon minecraft:text_display 756 83 -7 {Tags:["money_header","fade_in"],text:{type:"translatable",translate:"luigis_mansion:dialog.ghost_portrificationizer_room.results.money"},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:0b,Rotation:[-90.0f,0.0f]}
execute if score #dialog Dialog matches 229 if score #players Totals matches 2.. run summon minecraft:text_display 756 83 -7 {Tags:["money_header","fade_in"],text:{type:"translatable",translate:"luigis_mansion:dialog.ghost_portrificationizer_room.results.money.more"},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:0b,Rotation:[-90.0f,0.0f]}
execute if score #dialog Dialog matches 229 run scoreboard players set @e[tag=money_header,limit=1] Room -3
execute if score #dialog Dialog matches 230 run function luigis_mansion:dialog/play/score_results/get_money with storage luigis_mansion:data dialogs[0].money[0]
execute if score #dialog Dialog matches 231 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 233 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 235 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 237 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 239 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 241 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 243 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 245 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 247 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 249 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 270 run data remove storage luigis_mansion:data dialogs[0].money[0]
execute if score #dialog Dialog matches 270 store result storage luigis_mansion:data dialogs[0].counter double 0.1 run scoreboard players remove #temp Time 4
execute if score #dialog Dialog matches 270 if data storage luigis_mansion:data dialogs[0].money[0] run scoreboard players remove #dialog Dialog 41
execute if score #dialog Dialog matches 271 unless data storage luigis_mansion:data dialogs[0].pearls run scoreboard players add #dialog Dialog 40
execute if score #dialog Dialog matches 271 run function luigis_mansion:dialog/play/score_results/get_pearls
execute if score #dialog Dialog matches 272 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 274 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 276 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 278 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 280 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 282 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 284 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 286 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 288 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 290 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 311 store result storage luigis_mansion:data dialogs[0].counter double 0.1 run scoreboard players remove #temp Time 4
execute if score #dialog Dialog matches 311 unless data storage luigis_mansion:data dialogs[0].ending run function luigis_mansion:dialog/play/score_results/get_total_score
execute if score #dialog Dialog matches 311 if data storage luigis_mansion:data dialogs[0].ending if data storage luigis_mansion:data current_state.current_data.last_area_portrificationized run function luigis_mansion:dialog/play/score_results/get_total_score
execute if score #dialog Dialog matches 311 if data storage luigis_mansion:data dialogs[0].ending unless data storage luigis_mansion:data current_state.current_data.last_area_portrificationized run function luigis_mansion:dialog/play/score_results/save_high_score
execute if score #dialog Dialog matches 311 if data storage luigis_mansion:data current_state.current_data.last_area_portrificationized run function 3ds_remake:dialog/play/score_results/get_area_records with storage luigis_mansion:data macro
execute if score #dialog Dialog matches 311 if data storage luigis_mansion:data current_state.current_data.last_area_portrificationized run summon minecraft:text_display 756.5 81.9 -11.0 {Tags:["results_footer","fade_in"],text:{type:"translatable",translate:"3ds_remake:dialog.ghost_portrificationizer_room.results.high_score"},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:0b,Rotation:[-90.0f,0.0f]}
execute if score #dialog Dialog matches 311 if data storage luigis_mansion:data current_state.current_data.last_area_portrificationized as @e[tag=results_footer,limit=1] run function luigis_mansion:dialog/play/score_results/move_down with storage luigis_mansion:data dialogs[0]
execute if score #dialog Dialog matches 311 if data storage luigis_mansion:data current_state.current_data.last_area_portrificationized run scoreboard players set @e[tag=results_footer,limit=1] Room -3
execute if score #dialog Dialog matches 311 if data storage luigis_mansion:data current_state.current_data.last_area_portrificationized if score #area Time matches 1.. run summon minecraft:text_display 756.5 81.6 -11.0 {Tags:["area_footer","fade_in"],text:{type:"translatable",translate:"luigis_mansion:dialog.ghost_portrificationizer_room.high_score.up_to",with:[{type:"score",score:{name:"#area",objective:"Time"}}]},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:0b,Rotation:[-90.0f,0.0f]}
execute if score #dialog Dialog matches 311 if data storage luigis_mansion:data current_state.current_data.last_area_portrificationized if score #area Time matches 1.. as @e[tag=area_footer,limit=1] run function luigis_mansion:dialog/play/score_results/move_down with storage luigis_mansion:data dialogs[0]
execute if score #dialog Dialog matches 311 if data storage luigis_mansion:data current_state.current_data.last_area_portrificationized if score #area Time matches 1.. run scoreboard players set @e[tag=area_footer,limit=1] Room -3
execute if score #dialog Dialog matches 311 if data storage luigis_mansion:data current_state.current_data.last_area_portrificationized run scoreboard players operation #total Time > #temp Time
execute if score #dialog Dialog matches 311 if data storage luigis_mansion:data current_state.current_data.last_area_portrificationized run summon minecraft:text_display 756.5 81.3 -11.0 {Tags:["area_best","fade_in"],text:{type:"translatable",translate:"3ds_remake:dialog.ghost_portrificationizer_room.results.value",with:[{type:"score",score:{name:"#only",objective:"Time"}}]},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:0b,Rotation:[-90.0f,0.0f]}
execute if score #dialog Dialog matches 311 if data storage luigis_mansion:data current_state.current_data.last_area_portrificationized if score #only Time matches 0 run data modify entity @e[tag=area_best,limit=1] text set value {type:"translatable",translate:"3ds_remake:dialog.ghost_portrificationizer_room.results.no_money"}
execute if score #dialog Dialog matches 311 if data storage luigis_mansion:data current_state.current_data.last_area_portrificationized as @e[tag=area_best,limit=1] run function luigis_mansion:dialog/play/score_results/move_down with storage luigis_mansion:data dialogs[0]
execute if score #dialog Dialog matches 311 if data storage luigis_mansion:data current_state.current_data.last_area_portrificationized run scoreboard players set @e[tag=area_best,limit=1] Room -3
execute if score #dialog Dialog matches 311 if data storage luigis_mansion:data current_state.current_data.last_area_portrificationized run function 3ds_remake:dialog/play/score_results/save_total_record with storage luigis_mansion:data macro
execute if score #dialog Dialog matches 312 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 314 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 316 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 318 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 320 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 322 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 324 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 326 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 328 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 330 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute as @e[type=minecraft:text_display,scores={Room=-3}] run function luigis_mansion:dialog/play/score_results/text_fade
scoreboard players reset #temp Time
scoreboard players reset #arena Time
scoreboard players reset #arenas Time
#331..332
execute if score #dialog Dialog matches 333 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 333 unless data storage luigis_mansion:data dialogs[0].ending run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"underground_lab"},room:-1,progress:-1}
execute if score #dialog Dialog matches 333 unless data storage luigis_mansion:data dialogs[0].ending as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 333 unless data storage luigis_mansion:data dialogs[0].ending as @a[tag=same_room] run function luigis_mansion:room/underground_lab/warp_to
execute if score #dialog Dialog matches 333 if data storage luigis_mansion:data dialogs[0].ending run data modify storage luigis_mansion:data dialogs append value {name:{},room:-3,progress:0}
execute if score #dialog Dialog matches 333 if data storage luigis_mansion:data dialogs[0].ending run data modify storage luigis_mansion:data dialogs[-1].name set from storage luigis_mansion:data dialogs[0].ending
execute if score #dialog Dialog matches 333 run scoreboard players set #dialog Dialog -1