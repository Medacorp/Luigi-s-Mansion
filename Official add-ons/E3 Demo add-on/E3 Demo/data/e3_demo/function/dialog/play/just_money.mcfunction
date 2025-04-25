execute if score #dialog Dialog matches 147 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 146 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 5..145 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 125..144 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 145
execute if score #dialog Dialog matches 85..124 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 125
execute if score #dialog Dialog matches 2..4 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..124 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 125
execute if score #dialog Dialog matches 126..147 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 148
execute if score #dialog Dialog matches ..146 unless score #dialog Dialog matches 5..84 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 5..84 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 147.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=e_gadd,tag=same_room,limit=1] remove freeze_animation
tag @e[tag=e_gadd,tag=same_room,limit=1] add cannot_be_removed
tag @e[tag=e_gadd,tag=same_room,limit=1] remove can_talk_to
execute if score #dialog Dialog matches 1 as @e[tag=e_gadd,tag=same_room,limit=1] at @s facing entity @e[tag=luigi,tag=same_room,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if score #dialog Dialog matches 1..4 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 1 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"e3_demo:dialog.just_money.1",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 1 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"e3_demo:dialog.just_money.1.more"}]}
execute if score #dialog Dialog matches 1 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.ohmoogah_luigi_odoh neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 3 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ohmoogah_luigi_odoh
execute if score #dialog Dialog matches 3 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"e3_demo:dialog.just_money.2"}]}
execute if score #dialog Dialog matches 3 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"e3_demo:dialog.just_money.2.more"}]}
execute if score #dialog Dialog matches 3 if entity @a[tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.soh_suu_suhm_ehdeedee_ck_ck_suku_suku neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 3 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.soh_suu_suhm_ehdeedee_ck_ck_suku_suku
execute if score #dialog Dialog matches 4 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"e3_demo:dialog.just_money.3"}]}
execute if score #dialog Dialog matches 4 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"e3_demo:dialog.just_money.3.more"}]}
execute if score #dialog Dialog matches 4 if entity @a[tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.hmmm_nohjeebeedoggy_oui_ohmoogah neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 5 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 5..30 as @a[tag=same_room] run function luigis_mansion:other/music/set/non_overwritten_silence
execute if score #dialog Dialog matches 5 as @a[tag=same_room] run playsound luigis_mansion:ambience.spotlight ambient @s ~ ~ ~ 1
execute if score #dialog Dialog matches 31 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 31..146 as @a[tag=same_room] run function luigis_mansion:other/music/set/portraits
execute if score #dialog Dialog matches 85..145 run scoreboard players operation #temp2 Dialog = #dialog Dialog
execute if score #dialog Dialog matches 85..145 run scoreboard players operation #temp2 Dialog %= #2 Constants
execute if score #dialog Dialog matches 85 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.ghost_portrificationizer_room.results.money"}]}
execute if score #dialog Dialog matches 85 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.ghost_portrificationizer_room.results.money.more"}]}
execute if score #dialog Dialog matches 85 run function e3_demo:dialog/play/portrificationizing/get_ghost_coin
execute if score #dialog Dialog matches 85 unless score #temp Money matches 0 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"luigis_mansion:message.money",with:[{type:"translatable",translate:"e3_demo:item.ghost_coin"},{type:"score",score:{objective:"Money",name:"#temp"}},{type:"score",score:{objective:"Money",name:"#temp2"}}]}]}
execute if score #dialog Dialog matches 85 if score #temp Money matches 0 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"luigis_mansion:message.money.not_obtained"}]}
execute if score #dialog Dialog matches 85 if score #temp Money matches 0 run scoreboard players add #dialog Dialog 20
execute if score #dialog Dialog matches 85..104 if score #temp2 Dialog matches 0 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 125 run function luigis_mansion:dialog/play/portrificationizing/get_total_score
execute if score #dialog Dialog matches 125 if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:0} run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"luigis_mansion:message.money.multiplier.peaceful"}]}
execute if score #dialog Dialog matches 125 if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:1} run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"luigis_mansion:message.money.multiplier.easy"}]}
execute if score #dialog Dialog matches 125 if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:2} run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"luigis_mansion:message.money.multiplier.normal"}]}
execute if score #dialog Dialog matches 125 if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:3} run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"luigis_mansion:message.money.multiplier.hard"}]}
execute if score #dialog Dialog matches 125 if score #temp Money matches 1.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"luigis_mansion:message.money.total",with:[{type:"score",score:{objective:"Money",name:"#temp"}}]}]}
execute if score #dialog Dialog matches 125 unless score #temp Money matches 1.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"luigis_mansion:message.money.total.no_money"}]}
execute if score #dialog Dialog matches 125 if data storage luigis_mansion:data current_state.high_scores[0] run function luigis_mansion:dialog/play/portrificationizing/get_high_score
execute if score #dialog Dialog matches 125 run scoreboard players operation #temp2 Money > #temp Money
execute if score #dialog Dialog matches 125 run function luigis_mansion:dialog/play/portrificationizing/save_high_score
execute if score #dialog Dialog matches 125 if score #temp2 Money matches 1.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"luigis_mansion:message.money.high_score",with:[{type:"score",score:{objective:"Money",name:"#temp2"}}]}]}
execute if score #dialog Dialog matches 125 unless score #temp2 Money matches 1.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"luigis_mansion:message.money.high_score.no_money"}]}
execute if score #dialog Dialog matches 125 if score #3ds_remake Loaded matches 1.. store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.in_mansion_time
execute if score #dialog Dialog matches 125 if score #3ds_remake Loaded matches 1.. run function 3ds_remake:dialog/play/portrificationizing/convert_time
execute if score #dialog Dialog matches 125 if score #3ds_remake Loaded matches 1.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"3ds_remake:message.time_spent_in_mansion",with:[{type:"score",score:{name:"#temp6",objective:"Time"}},{type:"score",score:{name:"#temp5",objective:"Time"}},{type:"score",score:{name:"#temp4",objective:"Time"}},{type:"score",score:{name:"#temp3",objective:"Time"}},{type:"score",score:{name:"#temp2",objective:"Time"}},{type:"score",score:{name:"#temp",objective:"Time"}}]}]}
execute if score #dialog Dialog matches 125 if score #3ds_remake Loaded matches 1.. run scoreboard players reset #temp Time
execute if score #dialog Dialog matches 125 if score #3ds_remake Loaded matches 1.. run scoreboard players reset #temp2 Time
execute if score #dialog Dialog matches 125 if score #3ds_remake Loaded matches 1.. run scoreboard players reset #temp3 Time
execute if score #dialog Dialog matches 125 if score #3ds_remake Loaded matches 1.. run scoreboard players reset #temp4 Time
execute if score #dialog Dialog matches 125 if score #3ds_remake Loaded matches 1.. run scoreboard players reset #temp5 Time
execute if score #dialog Dialog matches 125 if score #3ds_remake Loaded matches 1.. run scoreboard players reset #temp6 Time
execute if score #dialog Dialog matches 125 if score #temp Money matches 0 run scoreboard players add #dialog Dialog 20
execute if score #dialog Dialog matches 125..144 if score #temp2 Dialog matches 0 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 85..145 run scoreboard players reset #temp Money
execute if score #dialog Dialog matches 85..145 run scoreboard players reset #temp2 Money
scoreboard players reset #temp2 Dialog
#146
execute if score #dialog Dialog matches 147 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 147 run scoreboard players set @a[tag=same_room] Room 0
execute if score #dialog Dialog matches 147 run tag @e[tag=e_gadd,tag=same_room,limit=1] remove cannot_be_removed
execute if score #dialog Dialog matches 147 run data modify storage luigis_mansion:data dialogs[0].room set value 0
execute if score #dialog Dialog matches 147 if entity @e[tag=e_gadd,tag=same_room,limit=1,tag=!can_talk_to] run tag @e[tag=luigi,tag=same_room] add dead
execute if score #dialog Dialog matches 148 run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"credits"},progress:0,room:0}
execute if score #dialog Dialog matches 148 run scoreboard players set #dialog Dialog -1