execute if score #dialog Dialog matches 250..251 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 251 if data storage luigis_mansion:data dialogs[0].ending run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 148..249 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 231..249 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 250
execute if score #dialog Dialog matches 191..229 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 230
execute if score #dialog Dialog matches 150..188 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 189
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
execute if score #dialog Dialog matches 141 store result storage luigis_mansion:data dialogs[0].counter int 1 run scoreboard players remove #temp Time 1
execute if score #dialog Dialog matches 141 run tag @e[tag=portrificationized_portrait_text,tag=!shown,limit=1] add shown
execute if score #dialog Dialog matches 141 run tag @e[tag=portrificationized_portrait,tag=suspended,limit=1] remove suspended
execute if score #dialog Dialog matches 142 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tag @e[tag=portrificationized_portrait,tag=!suspended,tag=!done_animating,limit=1] add finish_animating
execute if score #dialog Dialog matches 143 run scoreboard players set #dialog Dialog 111
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
execute if score #dialog Dialog matches 148 if score #players Totals matches 1 run summon minecraft:text_display 756 83 -7 {Tags:["money_header","fade_in"],text:{type:"translatable",translate:"luigis_mansion:dialog.ghost_portrificationizer_room.results.money"},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:0b,Rotation:[-90.0f,0.0f]}
execute if score #dialog Dialog matches 148 if score #players Totals matches 2.. run summon minecraft:text_display 756 83 -7 {Tags:["money_header","fade_in"],text:{type:"translatable",translate:"luigis_mansion:dialog.ghost_portrificationizer_room.results.money.more"},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:0b,Rotation:[-90.0f,0.0f]}
execute if score #dialog Dialog matches 148 run scoreboard players set @e[tag=money_header,limit=1] Room -3
execute if score #dialog Dialog matches 149 run function luigis_mansion:dialog/play/score_results/get_money with storage luigis_mansion:data dialogs[0].money[0]
execute if score #dialog Dialog matches 150 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 152 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 154 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 156 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 158 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 160 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 162 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 164 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 166 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 168 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 189 run data remove storage luigis_mansion:data dialogs[0].money[0]
execute if score #dialog Dialog matches 189 store result storage luigis_mansion:data dialogs[0].counter double 0.1 run scoreboard players remove #temp Time 4
execute if score #dialog Dialog matches 189 if data storage luigis_mansion:data dialogs[0].money[0] run scoreboard players remove #dialog Dialog 41
execute if score #dialog Dialog matches 190 unless data storage luigis_mansion:data dialogs[0].pearls run scoreboard players add #dialog Dialog 40
execute if score #dialog Dialog matches 190 run function luigis_mansion:dialog/play/score_results/get_pearls
execute if score #dialog Dialog matches 191 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 193 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 195 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 197 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 199 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 201 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 203 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 205 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 207 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 209 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 230 store result storage luigis_mansion:data dialogs[0].counter double 0.1 run scoreboard players remove #temp Time 4
execute if score #dialog Dialog matches 230 unless data storage luigis_mansion:data dialogs[0].ending run function luigis_mansion:dialog/play/score_results/get_total_score
execute if score #dialog Dialog matches 230 if data storage luigis_mansion:data dialogs[0].ending run function luigis_mansion:dialog/play/score_results/save_high_score
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
execute as @e[type=minecraft:text_display,scores={Room=-3}] run function luigis_mansion:dialog/play/score_results/text_fade
scoreboard players reset #temp Time
#250..251
execute if score #dialog Dialog matches 252 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 252 unless data storage luigis_mansion:data dialogs[0].ending run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"underground_lab"},room:-1,progress:-1}
execute if score #dialog Dialog matches 252 unless data storage luigis_mansion:data dialogs[0].ending as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 252 unless data storage luigis_mansion:data dialogs[0].ending as @a[tag=same_room] run function luigis_mansion:room/underground_lab/warp_to
execute if score #dialog Dialog matches 252 if data storage luigis_mansion:data dialogs[0].ending run data modify storage luigis_mansion:data dialogs append value {name:{},room:-3,progress:0}
execute if score #dialog Dialog matches 252 if data storage luigis_mansion:data dialogs[0].ending run data modify storage luigis_mansion:data dialogs[-1].name set from storage luigis_mansion:data dialogs[0].ending
execute if score #dialog Dialog matches 252 run scoreboard players set #dialog Dialog -1