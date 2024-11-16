execute if entity @e[tag=normal_death,limit=1] run tag @e[tag=same_room] add abort_dialog_tick
execute if entity @e[tag=normal_death,limit=1] run return 0

execute if score #dialog Dialog matches 43.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 22..41 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 21 if entity @a[tag=same_room,tag=game_boy_horror_selected,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..20 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..124 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 107
execute if score #dialog Dialog matches 42..124 unless score #dialog Dialog matches 119 as @a[tag=same_room,tag=!spectator] unless entity @s[tag=dialog_menu,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 119 as @a[tag=same_room,tag=!spectator,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/choice/save
execute if score #dialog Dialog matches 126.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1..19 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 20 as @a[tag=same_room] run tellraw @s {"type":"translatable","translate":"chat.type.text","with":[{"type":"selector","selector":"@s","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.player.ringing_game_boy_horror"}]}
execute if score #dialog Dialog matches 20..21 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 20..21 as @a[tag=same_room] run function luigis_mansion:other/music/set/game_boy_horror_calling

execute if score #dialog Dialog matches 22 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/nod
execute if score #dialog Dialog matches 42..124 as @a[tag=same_room] run function luigis_mansion:other/music/set/game_boy_horror
execute if score #dialog Dialog matches 42..124 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/game_boy_horror
execute if score #dialog Dialog matches 42..124 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:items/game_boy_horror/turn_screen_to_forced_value {value:"call",flags:[],floats:[2f,0f,0f,0f],tracker:[]}
execute if score #dialog Dialog matches 42 store result score #temp Boos run data get storage luigis_mansion:data current_state.current_data.boo_counter
execute if score #dialog Dialog matches 42 store result score #temp Variant run random value 1..27
execute if score #dialog Dialog matches 42 run tag @a[tag=same_room,limit=1] add next_dialog_line
execute if score #dialog Dialog matches 42 if score #temp Boos matches 1 run scoreboard players set #dialog Dialog 109
execute if score #dialog Dialog matches 42 if score #temp Boos matches 10 run scoreboard players set #dialog Dialog 100
execute if score #dialog Dialog matches 42 if score #temp Boos matches 15 run scoreboard players set #dialog Dialog 97
execute if score #dialog Dialog matches 42 if score #temp Boos matches 17 run scoreboard players set #dialog Dialog 106
execute if score #dialog Dialog matches 42 if score #temp Boos matches 20 run scoreboard players set #dialog Dialog 113
execute if score #dialog Dialog matches 42 if score #temp Boos matches 21 run scoreboard players set #dialog Dialog 103
execute if score #dialog Dialog matches 42 if score #temp Boos matches 50 run scoreboard players set #dialog Dialog 116
execute if score #dialog Dialog matches 42 if score #temp Variant matches 1 run scoreboard players set #dialog Dialog 43
execute if score #dialog Dialog matches 42 if score #temp Variant matches 2 run scoreboard players set #dialog Dialog 45
execute if score #dialog Dialog matches 42 if score #temp Variant matches 3 run scoreboard players set #dialog Dialog 47
execute if score #dialog Dialog matches 42 if score #temp Variant matches 4 run scoreboard players set #dialog Dialog 49
execute if score #dialog Dialog matches 42 if score #temp Variant matches 5 run scoreboard players set #dialog Dialog 51
execute if score #dialog Dialog matches 42 if score #temp Variant matches 6 run scoreboard players set #dialog Dialog 53
execute if score #dialog Dialog matches 42 if score #temp Variant matches 7 run scoreboard players set #dialog Dialog 55
execute if score #dialog Dialog matches 42 if score #temp Variant matches 8 run scoreboard players set #dialog Dialog 57
execute if score #dialog Dialog matches 42 if score #temp Variant matches 9 run scoreboard players set #dialog Dialog 59
execute if score #dialog Dialog matches 42 if score #temp Variant matches 10 run scoreboard players set #dialog Dialog 61
execute if score #dialog Dialog matches 42 if score #temp Variant matches 11 run scoreboard players set #dialog Dialog 63
execute if score #dialog Dialog matches 42 if score #temp Variant matches 12 run scoreboard players set #dialog Dialog 65
execute if score #dialog Dialog matches 42 if score #temp Variant matches 13 run scoreboard players set #dialog Dialog 67
execute if score #dialog Dialog matches 42 if score #temp Variant matches 14 run scoreboard players set #dialog Dialog 69
execute if score #dialog Dialog matches 42 if score #temp Variant matches 15 run scoreboard players set #dialog Dialog 71
execute if score #dialog Dialog matches 42 if score #temp Variant matches 16 run scoreboard players set #dialog Dialog 73
execute if score #dialog Dialog matches 42 if score #temp Variant matches 17 run scoreboard players set #dialog Dialog 75
execute if score #dialog Dialog matches 42 if score #temp Variant matches 18 run scoreboard players set #dialog Dialog 77
execute if score #dialog Dialog matches 42 if score #temp Variant matches 19 run scoreboard players set #dialog Dialog 79
execute if score #dialog Dialog matches 42 if score #temp Variant matches 20 run scoreboard players set #dialog Dialog 81
execute if score #dialog Dialog matches 42 if score #temp Variant matches 21 run scoreboard players set #dialog Dialog 83
execute if score #dialog Dialog matches 42 if score #temp Variant matches 22 run scoreboard players set #dialog Dialog 85
execute if score #dialog Dialog matches 42 if score #temp Variant matches 23 run scoreboard players set #dialog Dialog 87
execute if score #dialog Dialog matches 42 if score #temp Variant matches 24 run scoreboard players set #dialog Dialog 89
execute if score #dialog Dialog matches 42 if score #temp Variant matches 25 run scoreboard players set #dialog Dialog 91
execute if score #dialog Dialog matches 42 if score #temp Variant matches 26 run scoreboard players set #dialog Dialog 93
execute if score #dialog Dialog matches 42 if score #temp Variant matches 27 run scoreboard players set #dialog Dialog 95
scoreboard players reset #temp Variant

#normal random
execute if score #dialog Dialog matches 43 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.1"}]}
execute if score #dialog Dialog matches 43 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.1.more"}]}
execute if score #dialog Dialog matches 43 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hap_poh_oomahkah_tatta_tatta neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 44 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.hap_poh_oomahkah_tatta_tatta
execute if score #dialog Dialog matches 44 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 45 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.2"}]}
execute if score #dialog Dialog matches 45 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.2.more"}]}
execute if score #dialog Dialog matches 45 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.orohroh_odoh_pahn_pahn neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 46 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.orohroh_odoh_pahn_pahn
execute if score #dialog Dialog matches 46 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 47 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.3","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 47 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.3.more"}]}
execute if score #dialog Dialog matches 47 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_oui_oohmakah_tahmentahkeh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 48 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_oui_oohmakah_tahmentahkeh
execute if score #dialog Dialog matches 48 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 49 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.4"}]}
execute if score #dialog Dialog matches 49 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.4.more"}]}
execute if score #dialog Dialog matches 49 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.yahmum_bah_poheh_hap_poh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 50 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.yahmum_bah_poheh_hap_poh
execute if score #dialog Dialog matches 50 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 51 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.5","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 51 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.5.more"}]}
execute if score #dialog Dialog matches 51 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.odoh_luigi neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 52 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.odoh_luigi
execute if score #dialog Dialog matches 52 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 53 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.6","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 53 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.6.more"}]}
execute if score #dialog Dialog matches 53 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ooh_ooh_yahboh_yahboh_hoo_hoo_hoo neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 54 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ooh_ooh_yahboh_yahboh_hoo_hoo_hoo
execute if score #dialog Dialog matches 54 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 55 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.7","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 55 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.7.more"}]}
execute if score #dialog Dialog matches 55 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi_oui neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 56 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.luigi_oui
execute if score #dialog Dialog matches 56 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 57 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.8","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 57 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.8.more"}]}
execute if score #dialog Dialog matches 57 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.pen_pen_odoh_mah_mah_poheh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 58 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.pen_pen_odoh_mah_mah_poheh
execute if score #dialog Dialog matches 58 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 59 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.9","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 59 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.9.more"}]}
execute if score #dialog Dialog matches 59 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohmayah_luigi neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 60 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ohmayah_luigi
execute if score #dialog Dialog matches 60 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 61 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.10","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 61 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.10.more"}]}
execute if score #dialog Dialog matches 61 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi2 neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 62 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.luigi2
execute if score #dialog Dialog matches 62 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 63 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.11","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 63 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.11.more"}]}
execute if score #dialog Dialog matches 63 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 64 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.luigi
execute if score #dialog Dialog matches 64 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 65 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.12"}]}
execute if score #dialog Dialog matches 65 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.12.more"}]}
execute if score #dialog Dialog matches 65 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 66 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh
execute if score #dialog Dialog matches 66 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 67 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.13"}]}
execute if score #dialog Dialog matches 67 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.13.more"}]}
execute if score #dialog Dialog matches 67 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oui_oydohroh_tahmentahkeh2 neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 68 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.oui_oydohroh_tahmentahkeh2
execute if score #dialog Dialog matches 68 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 69 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.14","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 69 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.14.more"}]}
execute if score #dialog Dialog matches 69 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_oui_oohmakah_tahmentahkeh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 70 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_oui_oohmakah_tahmentahkeh
execute if score #dialog Dialog matches 70 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 71 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.15","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 71 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.15.more"}]}
execute if score #dialog Dialog matches 71 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 72 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh
execute if score #dialog Dialog matches 72 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 73 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.16","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 73 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.16.more"}]}
execute if score #dialog Dialog matches 73 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 74 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh
execute if score #dialog Dialog matches 74 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 75 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.17","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 75 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.17.more"}]}
execute if score #dialog Dialog matches 75 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 76 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh
execute if score #dialog Dialog matches 76 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 77 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.18","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 77 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.18.more"}]}
execute if score #dialog Dialog matches 77 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_soh_kah_ck_ck neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 78 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_soh_kah_ck_ck
execute if score #dialog Dialog matches 78 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 79 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.19","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 79 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.19.more"}]}
execute if score #dialog Dialog matches 79 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hap_poh_oomahkah_tatta_tatta neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 80 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.hap_poh_oomahkah_tatta_tatta
execute if score #dialog Dialog matches 80 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 81 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.20","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 81 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.20.more"}]}
execute if score #dialog Dialog matches 81 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.pen_pen_odoh_mah_mah_poheh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 82 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.pen_pen_odoh_mah_mah_poheh
execute if score #dialog Dialog matches 82 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 83 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.21","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 83 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.21.more"}]}
execute if score #dialog Dialog matches 83 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ooh_ooh_yahboh_yahboh_hoo_hoo_hoo neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 84 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ooh_ooh_yahboh_yahboh_hoo_hoo_hoo
execute if score #dialog Dialog matches 84 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 85 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.22","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 85 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.22.more"}]}
execute if score #dialog Dialog matches 85 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hap_poh_oomahkah_tatta_tatta neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 86 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.hap_poh_oomahkah_tatta_tatta
execute if score #dialog Dialog matches 86 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 87 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.23","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 87 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.23.more"}]}
execute if score #dialog Dialog matches 87 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 88 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh
execute if score #dialog Dialog matches 88 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 89 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.24","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 89 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.24.more"}]}
execute if score #dialog Dialog matches 89 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_oui_oohmakah_tahmentahkeh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 90 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_oui_oohmakah_tahmentahkeh
execute if score #dialog Dialog matches 90 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 91 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.25","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 91 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.25.more"}]}
execute if score #dialog Dialog matches 91 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.orohroh_odoh_pahn_pahn neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 92 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.orohroh_odoh_pahn_pahn
execute if score #dialog Dialog matches 92 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 93 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.25","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 93 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.25.more"}]}
execute if score #dialog Dialog matches 93 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_oui_oohmakah_tahmentahkeh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 94 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_oui_oohmakah_tahmentahkeh
execute if score #dialog Dialog matches 94 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 95 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.25","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 95 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.25.more"}]}
execute if score #dialog Dialog matches 95 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.pen_pen_odoh_mah_mah_poheh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 96 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.pen_pen_odoh_mah_mah_poheh
execute if score #dialog Dialog matches 96 run scoreboard players set #dialog Dialog 118

#extra info
execute if score #dialog Dialog matches 97 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.extra","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 97 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.extra.more"}]}
execute if score #dialog Dialog matches 97 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 98 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh
execute if score #dialog Dialog matches 98 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.extra.1"}]}
execute if score #dialog Dialog matches 98 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.extra.1.more"}]}
execute if score #dialog Dialog matches 98 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_oh_tohmah_tahmehno_tahkeh_bohh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 99 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_oh_tohmah_tahmehno_tahkeh_bohh
execute if score #dialog Dialog matches 99 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 100 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.tenth_boo.1","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 100 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.tenth_boo.1.more"}]}
execute if score #dialog Dialog matches 100 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 101 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh
execute if score #dialog Dialog matches 101 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.extra.2"}]}
execute if score #dialog Dialog matches 101 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.extra.2.more"}]}
execute if score #dialog Dialog matches 101 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohmoogah_luigi_odoh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 102 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ohmoogah_luigi_odoh
execute if score #dialog Dialog matches 102 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 103 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.extra","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 103 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.extra.more"}]}
execute if score #dialog Dialog matches 103 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 104 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh
execute if score #dialog Dialog matches 104 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.extra.3"}]}
execute if score #dialog Dialog matches 104 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.extra.3.more"}]}
execute if score #dialog Dialog matches 104 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oomahkah_oui_soy_soh_ooh_ck_ck neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 105 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.oomahkah_oui_soy_soh_ooh_ck_ck
execute if score #dialog Dialog matches 105 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 106 if entity @a[tag=next_dialog_line,limit=1] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.extra","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 106 if entity @a[tag=next_dialog_line,limit=1] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.extra.more"}]}
execute if score #dialog Dialog matches 106 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 107 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh
execute if score #dialog Dialog matches 107 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.extra.4"}]}
execute if score #dialog Dialog matches 107 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.extra.4.more"}]}
execute if score #dialog Dialog matches 107 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohyah_squirtbottlelaugh_bohh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 108 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ohyah_squirtbottlelaugh_bohh
execute if score #dialog Dialog matches 108 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 109 if entity @a[tag=next_dialog_line,limit=1] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.first_boo.1"}]}
execute if score #dialog Dialog matches 109 if entity @a[tag=next_dialog_line,limit=1] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.first_boo.1.more"}]}
execute if score #dialog Dialog matches 109 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 110 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh
execute if score #dialog Dialog matches 110 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.first_boo.2"}]}
execute if score #dialog Dialog matches 110 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_oh_tohmah_ck_ck_bohh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 111 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_oh_tohmah_ck_ck_bohh
execute if score #dialog Dialog matches 111 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.first_boo.3"}]}
execute if score #dialog Dialog matches 111 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.first_boo.3.more"}]}
execute if score #dialog Dialog matches 111 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohyah_ohyahmah_hey_hey_oui neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 112 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ohyah_ohyahmah_hey_hey_oui
execute if score #dialog Dialog matches 112 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 113 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.twenyth_boo.1","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 113 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.twenyth_boo.1.more"}]}
execute if score #dialog Dialog matches 113 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_soh_kah_ck_ck neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 114 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_soh_kah_ck_ck
execute if score #dialog Dialog matches 114 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.extra.5"}]}
execute if score #dialog Dialog matches 114 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.extra.5.more"}]}
execute if score #dialog Dialog matches 114 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohyah_squirtbottlelaugh_bohh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 115 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ohyah_squirtbottlelaugh_bohh
execute if score #dialog Dialog matches 115 run scoreboard players set #dialog Dialog 118

execute if score #dialog Dialog matches 116 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.last_boo.1","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 116 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.caught_boo.last_boo.1.more"}]}
execute if score #dialog Dialog matches 116 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_soh_kah_ck_ck neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 117 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_soh_kah_ck_ck
execute if score #dialog Dialog matches 117 run scoreboard players set #dialog Dialog 118

#ending
execute if score #dialog Dialog matches 118 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.end.1"}]}
execute if score #dialog Dialog matches 118 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.end.1.more"}]}
execute if score #dialog Dialog matches 118 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hey_hey_suu_dehkooroo_hah neutral @s ~ ~ ~ 1

#119 save?

execute if score #dialog Dialog matches 120 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.hey_hey_suu_dehkooroo_hah
execute if score #dialog Dialog matches 120 store result score #temp Boos run data get storage luigis_mansion:data current_state.current_data.boo_counter
execute if score #dialog Dialog matches 120 if score #temp Boos matches 5 run scoreboard players set #dialog Dialog 122
execute if score #dialog Dialog matches 120 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.end.2","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 120 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.end.2.more"}]}
execute if score #dialog Dialog matches 120 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.yahmum_baah neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 121 run scoreboard players set #dialog Dialog -1

execute if score #dialog Dialog matches 122 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.fifth_boo.1"}]}
execute if score #dialog Dialog matches 122 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.fifth_boo.1.more"}]}
execute if score #dialog Dialog matches 122 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_soh_kah_ck_ck neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 123 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_soh_kah_ck_ck
execute if score #dialog Dialog matches 123 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.fifth_boo.2"}]}
execute if score #dialog Dialog matches 123 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.fifth_boo.2.more"}]}
execute if score #dialog Dialog matches 123 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_oh_tohmah_ck_ck_bohh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 124 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_oh_tohmah_ck_ck_bohh
execute if score #dialog Dialog matches 124 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.fifth_boo.3"}]}
execute if score #dialog Dialog matches 124 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_boo.fifth_boo.3.more"}]}
execute if score #dialog Dialog matches 124 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.bohh_squirtbottlelaugh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 125 run scoreboard players set #dialog Dialog -1
execute if score #dialog Dialog matches -1 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches -1 as @a[tag=same_room] run function luigis_mansion:entities/player/animation/set/none
scoreboard players reset #temp Boos