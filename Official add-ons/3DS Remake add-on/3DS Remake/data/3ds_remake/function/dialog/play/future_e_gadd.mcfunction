execute if score #dialog Dialog matches 2496..2498 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 65..2495 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 64 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 3..63 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 2 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..2498 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 2499
execute if score #dialog Dialog matches ..2498 unless score #dialog Dialog matches 3..63 unless score #dialog Dialog matches 65..2495 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 3..63 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 65..2495 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 2499.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=e_gadd,tag=same_room,limit=1] remove freeze_animation
tag @e[tag=gooigi,tag=same_room,limit=1] remove no_ai
tag @e[tag=gooigi,tag=same_room,limit=1] remove freeze_animation
execute if score #dialog Dialog matches 1..22 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 1 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.future_e_gadd.1",with:[{type:"selector",selector:"@a[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 1 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.future_e_gadd.1.more"}]}
execute if score #dialog Dialog matches 1 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.luigi neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 3 run data modify storage luigis_mansion:data dialogs[0].screen_flicker set value 0
execute if score #dialog Dialog matches 3..144 store result score #temp2 Dialog run data get storage luigis_mansion:data dialogs[0].screen_flicker
execute if score #dialog Dialog matches 3..144 store result storage luigis_mansion:data dialogs[0].screen_flicker int 1 run scoreboard players add #temp2 Dialog 1
execute if score #dialog Dialog matches 3..144 if score #temp2 Dialog matches 20 store result storage luigis_mansion:data dialogs[0].screen_flicker int 1 run scoreboard players set #temp2 Dialog 0
execute if score #dialog Dialog matches 3..144 if score #temp2 Dialog matches 0..5 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:items/game_boy_horror/turn_screen_to_forced_value {value:"none",flags:[],floats:[0f,0f,0f,0f],tracker:[]}
execute if score #dialog Dialog matches 3..144 unless score #temp2 Dialog matches 0..5 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:items/game_boy_horror/turn_screen_to_forced_value {value:"call",flags:[],floats:[5f,0f,0f,0f],tracker:[]}
execute if score #dialog Dialog matches 3..144 run scoreboard players reset #temp2 Dialog
execute if score #dialog Dialog matches 23 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 23 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/scare/normal
execute if score #dialog Dialog matches 23..144 as @a[tag=same_room] run function luigis_mansion:other/music/set/non_overwritten_silence
execute if score #dialog Dialog matches 33..324 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 63 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.future_e_gadd.2"}]}
execute if score #dialog Dialog matches 63 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_hey_hey_suu_dehkooroo_hah neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 145..2434 as @a[tag=same_room] run function 3ds_remake:other/music/set/force/future_e_gadd
execute if score #dialog Dialog matches 145..2434 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:items/game_boy_horror/turn_screen_to_forced_value {value:"call",flags:[],floats:[0f,0f,0f,0f],tracker:[]}
execute if score #dialog Dialog matches 255 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"3ds_remake:entity.future_e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.future_e_gadd.3"}]}
execute if score #dialog Dialog matches 255 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.shortlaugh neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 325 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"3ds_remake",id:"scared"}
execute if score #dialog Dialog matches 325 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 325 as @e[tag=luigi,tag=same_room] at @s positioned ^ ^ ^1 run function luigis_mansion:entities/luigi/animation/set/scare/bash_no_move
execute if score #dialog Dialog matches 375..2498 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 345 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"sit"}
execute if score #dialog Dialog matches 405 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"3ds_remake:entity.future_e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.future_e_gadd.4"}]}
execute if score #dialog Dialog matches 405 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mm_oydohroh neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 495 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"3ds_remake:entity.future_e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.future_e_gadd.5"}]}
execute if score #dialog Dialog matches 495 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_ohmoogah neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 575 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"3ds_remake:entity.future_e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.future_e_gadd.6"}]}
execute if score #dialog Dialog matches 575 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.longlaugh neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 655 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"get_up"}
execute if score #dialog Dialog matches 675 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 655 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"3ds_remake:entity.future_e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.future_e_gadd.7"}]}
execute if score #dialog Dialog matches 655 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oh_tohmah_poheh_jeemee_jeemee neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 745 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"3ds_remake:entity.future_e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.future_e_gadd.8"}]}
execute if score #dialog Dialog matches 745 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.yahmum_bah_poheh_hap_poh neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 865 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"3ds_remake:entity.future_e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.future_e_gadd.9",with:[{type:"selector",selector:"@a[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 865 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"3ds_remake:entity.future_e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.future_e_gadd.9.more"}]}
execute if score #dialog Dialog matches 865 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mah_mah_mah_luigi_oui neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 1055 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"3ds_remake",id:"protect_eyes"}
execute if score #dialog Dialog matches 1055..1155 run particle minecraft:flash 784 77 12 0 0 0 0 2 force
execute if score #dialog Dialog matches 1155 run data modify storage luigis_mansion:data entity set value {room:-1,animation:{namespace:"3ds_remake",id:"gooigi_pool"}}
execute if score #dialog Dialog matches 1155 positioned 784 77 12 run function 3ds_remake:spawn_entities/gooigi/lab
execute if score #dialog Dialog matches 1155 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 1235 run data remove entity @e[tag=same_room,tag=gooigi,limit=1] data.animation
execute if score #dialog Dialog matches 1235 run tag @e[tag=same_room,tag=gooigi,limit=1] add spawn_animation
execute if score #dialog Dialog matches 1285 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"3ds_remake:entity.future_e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.future_e_gadd.10"}]}
execute if score #dialog Dialog matches 1285 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hey_hey_suu_dehkooroo_hah neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 1395 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"3ds_remake:entity.future_e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.future_e_gadd.11"}]}
execute if score #dialog Dialog matches 1395 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"3ds_remake:entity.future_e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.future_e_gadd.11.more"}]}
execute if score #dialog Dialog matches 1395 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.gay_roon_ehdeedee_odoh neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 1505 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"3ds_remake",id:"excited"}
execute if score #dialog Dialog matches 1505 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"3ds_remake:entity.future_e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.future_e_gadd.12"}]}
execute if score #dialog Dialog matches 1505 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oui_soh_suu_suhm_ck_ck neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 1615 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"3ds_remake:entity.future_e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.future_e_gadd.13"}]}
execute if score #dialog Dialog matches 1615 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.suku_suku_ck_ck neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 1705 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"3ds_remake:entity.future_e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.future_e_gadd.14"}]}
execute if score #dialog Dialog matches 1705 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"3ds_remake:entity.future_e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.future_e_gadd.14.more"}]}
execute if score #dialog Dialog matches 1705 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.keeyehroo_suu_suku_suku neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 1825 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"3ds_remake:entity.future_e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.future_e_gadd.15"}]}
execute if score #dialog Dialog matches 1825 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oh_tohmah_poheh_jeemee_jeemee neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 1935 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"3ds_remake:entity.future_e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.future_e_gadd.16"}]}
execute if score #dialog Dialog matches 1935 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_hey_hey_suu_dehkooroo_hah neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 2065 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"3ds_remake:entity.future_e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.future_e_gadd.17"}]}
execute if score #dialog Dialog matches 2065 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oh_tohmah_poheh_jeemee_jeemee_pen_pen neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 2195 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"3ds_remake:entity.future_e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.future_e_gadd.18"}]}
execute if score #dialog Dialog matches 2195 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.yahmum_bah_poheh_hap_poh neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 2325 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"3ds_remake:entity.future_e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.future_e_gadd.19"}]}
execute if score #dialog Dialog matches 2325 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohmoogah_luigi_odoh neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 2435 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence

execute if score #dialog Dialog matches 2495 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.future_e_gadd.20"}]}
execute if score #dialog Dialog matches 2495 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.ohyah_ohyahmah_hey_hey_oui neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 2497 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ohyah_ohyahmah_hey_hey_oui
execute if score #dialog Dialog matches 2497 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.future_e_gadd.21"}]}
execute if score #dialog Dialog matches 2497 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.keeyehroo_suu_suku_suku neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 2498 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.keeyehroo_suu_suku_suku
execute if score #dialog Dialog matches 2498 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.future_e_gadd.22",with:[{type:"selector",selector:"@a[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 2498 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.future_e_gadd.22.more"}]}
execute if score #dialog Dialog matches 2498 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.oui_oydohroh_tahmentahkeh neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 2499 run data modify storage 3ds_remake:data spoke_with_future_e_gadd set value 1b
execute if score #dialog Dialog matches 2499 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 2499 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.oui_oydohroh_tahmentahkeh
execute if score #dialog Dialog matches 2499 run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"underground_lab"},room:-1,progress:0}
execute if score #dialog Dialog matches 2499 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 2499 run scoreboard players set #dialog Dialog -1