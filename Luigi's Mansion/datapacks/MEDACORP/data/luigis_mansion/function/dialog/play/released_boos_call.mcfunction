execute if score #dialog Dialog matches 52.. run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 48..51 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 42..47 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 48
execute if score #dialog Dialog matches 22..46 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 21 if entity @e[tag=luigi,tag=same_room,tag=game_boy_horror_selected,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..20 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..71 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 72
execute if score #dialog Dialog matches 42..51 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 52.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1..19 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 20 as @a[tag=same_room,tag=!spectator] run tellraw @s {type:"translatable",translate:"chat.type.text",with:[{type:"selector",selector:"@s",color:"green"},{type:"translatable",translate:"luigis_mansion:message.player.ringing_game_boy_horror"}]}
execute if score #dialog Dialog matches 20..21 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 20..41 as @a[tag=same_room] run function luigis_mansion:other/music/set/game_boy_horror

execute if score #dialog Dialog matches 22..41 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 42..46 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:items/game_boy_horror/turn_screen_to_forced_value {value:"call",flags:[],floats:[5f,0f,0f,0f],tracker:[]}
execute if score #dialog Dialog matches 47.. as @a[tag=same_room,tag=!spectator] run function luigis_mansion:items/game_boy_horror/turn_screen_to_forced_value {value:"call",flags:[],floats:[2f,0f,0f,0f],tracker:[]}
execute if score #dialog Dialog matches 42.. as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/game_boy_horror
execute if score #dialog Dialog matches 42.. as @a[tag=same_room] run function luigis_mansion:other/music/set/e_gadd_call
execute if score #dialog Dialog matches 42 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.released_boos_call.1",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 42 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.released_boos_call.1.more"}]}
execute if score #dialog Dialog matches 42 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi3 neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 48 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.luigi3
execute if score #dialog Dialog matches 48 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.released_boos_call.2"}]}
execute if score #dialog Dialog matches 48 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.pen_pen_odoh_mah_mah_poheh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 49 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.pen_pen_odoh_mah_mah_poheh
execute if score #dialog Dialog matches 49 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.released_boos_call.3",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 49 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.released_boos_call.3.more"}]}
execute if score #dialog Dialog matches 49 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohmoogah_luigi_odoh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 50 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ohmoogah_luigi_odoh
execute if score #dialog Dialog matches 50 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.released_boos_call.4"}]}
execute if score #dialog Dialog matches 50 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.released_boos_call.4.more"}]}
execute if score #dialog Dialog matches 50 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_hey_hey_suu_dehkooroo_hah neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 51 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_hey_hey_suu_dehkooroo_hah
execute if score #dialog Dialog matches 51 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.released_boos_call.5"}]}
execute if score #dialog Dialog matches 51 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.released_boos_call.5.more"}]}
execute if score #dialog Dialog matches 51 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oomahkah_oui_soy_soh_ooh_ck_ck neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 52 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 52.. as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 72 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 72 as @a[tag=same_room] run function luigis_mansion:room/underground_lab/warp_to
execute if score #dialog Dialog matches 72 run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"released_boos_talk"},room:-1,progress:-1}
execute if score #dialog Dialog matches 72 run scoreboard players set #dialog Dialog -1