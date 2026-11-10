execute if entity @e[tag=!player,scores={DeathTime=1..},limit=1] run tag @e[tag=same_room] add abort_dialog_tick
execute if entity @e[tag=!player,scores={DeathTime=1..},limit=1] run return 0

execute store result score #temp ID run data get storage luigis_mansion:data dialogs[0].player
execute as @e[tag=luigi,tag=same_room] if score @s ID = #temp ID run tag @s add boo_catching_player
scoreboard players reset #temp ID

execute if score #dialog Dialog matches 73.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 52..71 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 51 if entity @e[tag=luigi,tag=same_room,tag=game_boy_horror_selected,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..50 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..154 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 137
execute if score #dialog Dialog matches 72..154 unless score #dialog Dialog matches 149 as @a[tag=same_room,tag=!spectator] unless entity @s[tag=dialog_menu,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 149 as @a[tag=same_room,tag=!spectator,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/choice/save
execute if score #dialog Dialog matches 156.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1..30 as @e[tag=luigi,tag=same_room,tag=!boo_catching_player] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 1..30 as @e[tag=boo_catching_player,limit=1] run function luigis_mansion:entities/luigi/animation/set/put_poltergust_away_stylishly
execute if score #dialog Dialog matches 31..49 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 50 as @a[tag=same_room,tag=!spectator] run tellraw @s {type:"translatable",translate:"chat.type.text",with:[{type:"selector",selector:"@s",color:"green"},{type:"translatable",translate:"luigis_mansion:message.player.ringing_game_boy_horror"}]}
execute if score #dialog Dialog matches 50..51 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 50..51 as @a[tag=same_room] run function luigis_mansion:other/music/set/game_boy_horror

execute if score #dialog Dialog matches 52 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/nod
execute if score #dialog Dialog matches 72..154 as @a[tag=same_room] run function luigis_mansion:other/music/set/e_gadd_call
execute if score #dialog Dialog matches 72..154 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/game_boy_horror
execute if score #dialog Dialog matches 72..154 as @e[tag=luigi,tag=same_room] run function luigis_mansion:items/game_boy_horror/turn_screen_to_forced_value {value:"call",flags:[],floats:[2f,0f,0f,0f],tracker:[]}
execute if score #dialog Dialog matches 72 store result score #temp Boos run data get storage luigis_mansion:data current_state.luigis_mansion.current_data.boo_counter
execute if score #dialog Dialog matches 72 store result score #temp Variant run random value 1..27
execute if score #dialog Dialog matches 72 run tag @a[tag=same_room,limit=1] add next_dialog_line
execute if score #dialog Dialog matches 72 if score #temp Boos matches 1 run scoreboard players set #dialog Dialog 139
execute if score #dialog Dialog matches 72 if score #temp Boos matches 10 run scoreboard players set #dialog Dialog 130
execute if score #dialog Dialog matches 72 if score #temp Boos matches 15 run scoreboard players set #dialog Dialog 127
execute if score #dialog Dialog matches 72 if score #temp Boos matches 17 run scoreboard players set #dialog Dialog 136
execute if score #dialog Dialog matches 72 if score #temp Boos matches 20 run scoreboard players set #dialog Dialog 143
execute if score #dialog Dialog matches 72 if score #temp Boos matches 21 run scoreboard players set #dialog Dialog 133
execute if score #dialog Dialog matches 72 if score #temp Boos matches 50 run scoreboard players set #dialog Dialog 146
execute if score #dialog Dialog matches 72 if score #temp Variant matches 1 run scoreboard players set #dialog Dialog 73
execute if score #dialog Dialog matches 72 if score #temp Variant matches 2 run scoreboard players set #dialog Dialog 75
execute if score #dialog Dialog matches 72 if score #temp Variant matches 3 run scoreboard players set #dialog Dialog 77
execute if score #dialog Dialog matches 72 if score #temp Variant matches 4 run scoreboard players set #dialog Dialog 79
execute if score #dialog Dialog matches 72 if score #temp Variant matches 5 run scoreboard players set #dialog Dialog 81
execute if score #dialog Dialog matches 72 if score #temp Variant matches 6 run scoreboard players set #dialog Dialog 83
execute if score #dialog Dialog matches 72 if score #temp Variant matches 7 run scoreboard players set #dialog Dialog 85
execute if score #dialog Dialog matches 72 if score #temp Variant matches 8 run scoreboard players set #dialog Dialog 87
execute if score #dialog Dialog matches 72 if score #temp Variant matches 9 run scoreboard players set #dialog Dialog 89
execute if score #dialog Dialog matches 72 if score #temp Variant matches 10 run scoreboard players set #dialog Dialog 91
execute if score #dialog Dialog matches 72 if score #temp Variant matches 11 run scoreboard players set #dialog Dialog 93
execute if score #dialog Dialog matches 72 if score #temp Variant matches 12 run scoreboard players set #dialog Dialog 95
execute if score #dialog Dialog matches 72 if score #temp Variant matches 13 run scoreboard players set #dialog Dialog 97
execute if score #dialog Dialog matches 72 if score #temp Variant matches 14 run scoreboard players set #dialog Dialog 99
execute if score #dialog Dialog matches 72 if score #temp Variant matches 15 run scoreboard players set #dialog Dialog 101
execute if score #dialog Dialog matches 72 if score #temp Variant matches 16 run scoreboard players set #dialog Dialog 103
execute if score #dialog Dialog matches 72 if score #temp Variant matches 17 run scoreboard players set #dialog Dialog 105
execute if score #dialog Dialog matches 72 if score #temp Variant matches 18 run scoreboard players set #dialog Dialog 107
execute if score #dialog Dialog matches 72 if score #temp Variant matches 19 run scoreboard players set #dialog Dialog 109
execute if score #dialog Dialog matches 72 if score #temp Variant matches 20 run scoreboard players set #dialog Dialog 111
execute if score #dialog Dialog matches 72 if score #temp Variant matches 21 run scoreboard players set #dialog Dialog 113
execute if score #dialog Dialog matches 72 if score #temp Variant matches 22 run scoreboard players set #dialog Dialog 115
execute if score #dialog Dialog matches 72 if score #temp Variant matches 23 run scoreboard players set #dialog Dialog 117
execute if score #dialog Dialog matches 72 if score #temp Variant matches 24 run scoreboard players set #dialog Dialog 119
execute if score #dialog Dialog matches 72 if score #temp Variant matches 25 run scoreboard players set #dialog Dialog 121
execute if score #dialog Dialog matches 72 if score #temp Variant matches 26 run scoreboard players set #dialog Dialog 123
execute if score #dialog Dialog matches 72 if score #temp Variant matches 27 run scoreboard players set #dialog Dialog 125
scoreboard players reset #temp Variant

#normal random
execute if score #dialog Dialog matches 73 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.1"}]}
execute if score #dialog Dialog matches 73 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.1.more"}]}
execute if score #dialog Dialog matches 73 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hap_poh_oomahkah_tatta_tatta neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 74 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.hap_poh_oomahkah_tatta_tatta
execute if score #dialog Dialog matches 74 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 75 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.2"}]}
execute if score #dialog Dialog matches 75 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.2.more"}]}
execute if score #dialog Dialog matches 75 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.orohroh_odoh_pahn_pahn neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 76 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.orohroh_odoh_pahn_pahn
execute if score #dialog Dialog matches 76 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 77 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.3",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 77 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.3.more"}]}
execute if score #dialog Dialog matches 77 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_oui_oohmakah_tahmentahkeh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 78 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_oui_oohmakah_tahmentahkeh
execute if score #dialog Dialog matches 78 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 79 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.4"}]}
execute if score #dialog Dialog matches 79 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.4.more"}]}
execute if score #dialog Dialog matches 79 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.yahmum_bah_poheh_hap_poh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 80 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.yahmum_bah_poheh_hap_poh
execute if score #dialog Dialog matches 80 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 81 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.5",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 81 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.5.more"}]}
execute if score #dialog Dialog matches 81 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.odoh_luigi neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 82 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.odoh_luigi
execute if score #dialog Dialog matches 82 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 83 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.6",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 83 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.6.more"}]}
execute if score #dialog Dialog matches 83 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ooh_ooh_yahboh_yahboh_hoo_hoo_hoo neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 84 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ooh_ooh_yahboh_yahboh_hoo_hoo_hoo
execute if score #dialog Dialog matches 84 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 85 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.7",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 85 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.7.more"}]}
execute if score #dialog Dialog matches 85 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi_oui neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 86 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.luigi_oui
execute if score #dialog Dialog matches 86 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 87 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.8",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 87 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.8.more"}]}
execute if score #dialog Dialog matches 87 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.pen_pen_odoh_mah_mah_poheh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 88 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.pen_pen_odoh_mah_mah_poheh
execute if score #dialog Dialog matches 88 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 89 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.9",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 89 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.9.more"}]}
execute if score #dialog Dialog matches 89 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohmayah_luigi neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 90 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ohmayah_luigi
execute if score #dialog Dialog matches 90 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 91 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.10",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 91 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.10.more"}]}
execute if score #dialog Dialog matches 91 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi2 neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 92 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.luigi2
execute if score #dialog Dialog matches 92 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 93 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.11",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 93 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.11.more"}]}
execute if score #dialog Dialog matches 93 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 94 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.luigi
execute if score #dialog Dialog matches 94 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 95 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.12"}]}
execute if score #dialog Dialog matches 95 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.12.more"}]}
execute if score #dialog Dialog matches 95 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 96 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh
execute if score #dialog Dialog matches 96 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 97 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.13"}]}
execute if score #dialog Dialog matches 97 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.13.more"}]}
execute if score #dialog Dialog matches 97 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oui_oydohroh_tahmentahkeh2 neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 98 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.oui_oydohroh_tahmentahkeh2
execute if score #dialog Dialog matches 98 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 99 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.14",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 99 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.14.more"}]}
execute if score #dialog Dialog matches 99 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_oui_oohmakah_tahmentahkeh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 100 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_oui_oohmakah_tahmentahkeh
execute if score #dialog Dialog matches 100 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 101 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.15",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 101 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.15.more"}]}
execute if score #dialog Dialog matches 101 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 102 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh
execute if score #dialog Dialog matches 102 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 103 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.16",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 103 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.16.more"}]}
execute if score #dialog Dialog matches 103 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 104 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh
execute if score #dialog Dialog matches 104 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 105 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.17",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 105 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.17.more"}]}
execute if score #dialog Dialog matches 105 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 106 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh
execute if score #dialog Dialog matches 106 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 107 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.18",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 107 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.18.more"}]}
execute if score #dialog Dialog matches 107 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_soh_kah_ck_ck neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 108 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_soh_kah_ck_ck
execute if score #dialog Dialog matches 108 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 109 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.19",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 109 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.19.more"}]}
execute if score #dialog Dialog matches 109 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hap_poh_oomahkah_tatta_tatta neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 110 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.hap_poh_oomahkah_tatta_tatta
execute if score #dialog Dialog matches 110 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 111 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.20",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 111 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.20.more"}]}
execute if score #dialog Dialog matches 111 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.pen_pen_odoh_mah_mah_poheh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 112 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.pen_pen_odoh_mah_mah_poheh
execute if score #dialog Dialog matches 112 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 113 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.21",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 113 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.21.more"}]}
execute if score #dialog Dialog matches 113 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ooh_ooh_yahboh_yahboh_hoo_hoo_hoo neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 114 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ooh_ooh_yahboh_yahboh_hoo_hoo_hoo
execute if score #dialog Dialog matches 114 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 115 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.22",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 115 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.22.more"}]}
execute if score #dialog Dialog matches 115 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hap_poh_oomahkah_tatta_tatta neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 116 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.hap_poh_oomahkah_tatta_tatta
execute if score #dialog Dialog matches 116 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 117 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.23",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 117 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.23.more"}]}
execute if score #dialog Dialog matches 117 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 118 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh
execute if score #dialog Dialog matches 118 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 119 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.24",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 119 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.24.more"}]}
execute if score #dialog Dialog matches 119 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_oui_oohmakah_tahmentahkeh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 120 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_oui_oohmakah_tahmentahkeh
execute if score #dialog Dialog matches 120 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 121 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.25",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 121 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.25.more"}]}
execute if score #dialog Dialog matches 121 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.orohroh_odoh_pahn_pahn neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 122 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.orohroh_odoh_pahn_pahn
execute if score #dialog Dialog matches 122 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 123 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.25",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 123 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.25.more"}]}
execute if score #dialog Dialog matches 123 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_oui_oohmakah_tahmentahkeh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 124 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_oui_oohmakah_tahmentahkeh
execute if score #dialog Dialog matches 124 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 125 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.25",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 125 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.25.more"}]}
execute if score #dialog Dialog matches 125 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.pen_pen_odoh_mah_mah_poheh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 126 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.pen_pen_odoh_mah_mah_poheh
execute if score #dialog Dialog matches 126 run scoreboard players set #dialog Dialog 148

#extra info
execute if score #dialog Dialog matches 127 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.extra",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 127 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.extra.more"}]}
execute if score #dialog Dialog matches 127 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 128 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh
execute if score #dialog Dialog matches 128 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.extra.1"}]}
execute if score #dialog Dialog matches 128 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.extra.1.more"}]}
execute if score #dialog Dialog matches 128 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_oh_tohmah_tahmehno_tahkeh_bohh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 129 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_oh_tohmah_tahmehno_tahkeh_bohh
execute if score #dialog Dialog matches 129 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 130 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.tenth_boo.1",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 130 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.tenth_boo.1.more"}]}
execute if score #dialog Dialog matches 130 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 131 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh
execute if score #dialog Dialog matches 131 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.extra.2"}]}
execute if score #dialog Dialog matches 131 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.extra.2.more"}]}
execute if score #dialog Dialog matches 131 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohmoogah_luigi_odoh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 132 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ohmoogah_luigi_odoh
execute if score #dialog Dialog matches 132 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 133 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.extra",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 133 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.extra.more"}]}
execute if score #dialog Dialog matches 133 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 134 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh
execute if score #dialog Dialog matches 134 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.extra.3"}]}
execute if score #dialog Dialog matches 134 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.extra.3.more"}]}
execute if score #dialog Dialog matches 134 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oomahkah_oui_soy_soh_ooh_ck_ck neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 135 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.oomahkah_oui_soy_soh_ooh_ck_ck
execute if score #dialog Dialog matches 135 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 136 if entity @a[tag=next_dialog_line,limit=1] if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.extra",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 136 if entity @a[tag=next_dialog_line,limit=1] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.extra.more"}]}
execute if score #dialog Dialog matches 136 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 137 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh
execute if score #dialog Dialog matches 137 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.extra.4"}]}
execute if score #dialog Dialog matches 137 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.extra.4.more"}]}
execute if score #dialog Dialog matches 137 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohyah_squirtbottlelaugh_bohh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 138 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ohyah_squirtbottlelaugh_bohh
execute if score #dialog Dialog matches 138 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 139 if entity @a[tag=next_dialog_line,limit=1] if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.first_boo.1"}]}
execute if score #dialog Dialog matches 139 if entity @a[tag=next_dialog_line,limit=1] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.first_boo.1.more"}]}
execute if score #dialog Dialog matches 139 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 140 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh
execute if score #dialog Dialog matches 140 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.first_boo.2"}]}
execute if score #dialog Dialog matches 140 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_oh_tohmah_ck_ck_bohh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 141 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_oh_tohmah_ck_ck_bohh
execute if score #dialog Dialog matches 141 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.first_boo.3"}]}
execute if score #dialog Dialog matches 141 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.first_boo.3.more"}]}
execute if score #dialog Dialog matches 141 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohyah_ohyahmah_hey_hey_oui neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 142 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ohyah_ohyahmah_hey_hey_oui
execute if score #dialog Dialog matches 142 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 143 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.twenyth_boo.1",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 143 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.twenyth_boo.1.more"}]}
execute if score #dialog Dialog matches 143 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_soh_kah_ck_ck neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 144 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_soh_kah_ck_ck
execute if score #dialog Dialog matches 144 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.extra.5"}]}
execute if score #dialog Dialog matches 144 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.extra.5.more"}]}
execute if score #dialog Dialog matches 144 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohyah_squirtbottlelaugh_bohh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 145 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ohyah_squirtbottlelaugh_bohh
execute if score #dialog Dialog matches 145 run scoreboard players set #dialog Dialog 148

execute if score #dialog Dialog matches 146 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.last_boo.1",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 146 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.caught_boo.last_boo.1.more"}]}
execute if score #dialog Dialog matches 146 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_soh_kah_ck_ck neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 147 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_soh_kah_ck_ck
execute if score #dialog Dialog matches 147 run scoreboard players set #dialog Dialog 148

#ending
execute if score #dialog Dialog matches 148 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.end.1"}]}
execute if score #dialog Dialog matches 148 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.end.1.more"}]}
execute if score #dialog Dialog matches 148 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hey_hey_suu_dehkooroo_hah neutral @s ~ ~ ~ 1

#149 save?

execute if score #dialog Dialog matches 150 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.hey_hey_suu_dehkooroo_hah
execute if score #dialog Dialog matches 150 store result score #temp Boos run data get storage luigis_mansion:data current_state.luigis_mansion.current_data.boo_counter
execute if score #dialog Dialog matches 150 if score #temp Boos matches 5 run scoreboard players set #dialog Dialog 152
execute if score #dialog Dialog matches 150 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.end.2",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 150 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.end.2.more"}]}
execute if score #dialog Dialog matches 150 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.yahmum_baah neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 151 run scoreboard players set #dialog Dialog -1

execute if score #dialog Dialog matches 152 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.fifth_boo.1"}]}
execute if score #dialog Dialog matches 152 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.fifth_boo.1.more"}]}
execute if score #dialog Dialog matches 152 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_soh_kah_ck_ck neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 153 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_soh_kah_ck_ck
execute if score #dialog Dialog matches 153 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.fifth_boo.2"}]}
execute if score #dialog Dialog matches 153 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.fifth_boo.2.more"}]}
execute if score #dialog Dialog matches 153 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_oh_tohmah_ck_ck_bohh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 154 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_oh_tohmah_ck_ck_bohh
execute if score #dialog Dialog matches 154 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.fifth_boo.3"}]}
execute if score #dialog Dialog matches 154 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.caught_boo.fifth_boo.3.more"}]}
execute if score #dialog Dialog matches 154 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.bohh_squirtbottlelaugh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 155 run scoreboard players set #dialog Dialog -1
execute if score #dialog Dialog matches -1 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches -1 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
scoreboard players reset #temp Boos
tag @e[tag=boo_catching_player,limit=1] remove boo_catching_player