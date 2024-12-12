execute if score #dialog Dialog matches 117.. run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 108..116 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 48..107 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 42..47 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 48
execute if score #dialog Dialog matches 22..46 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 21 if entity @e[tag=luigi,tag=same_room,tag=game_boy_horror_selected,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..20 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..115 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 116
execute if score #dialog Dialog matches 42..116 unless score #dialog Dialog matches 48..107 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 48..107 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 117.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1..19 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 20 as @a[tag=same_room] run tellraw @s {"type":"translatable","translate":"chat.type.text","with":[{"type":"selector","selector":"@s","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.player.ringing_game_boy_horror"}]}
execute if score #dialog Dialog matches 20..21 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 20..41 as @a[tag=same_room] run function luigis_mansion:other/music/set/game_boy_horror_calling

execute if score #dialog Dialog matches 22 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/nod
execute if score #dialog Dialog matches 42..116 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/game_boy_horror
execute if score #dialog Dialog matches 42..46 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:items/game_boy_horror/turn_screen_to_forced_value {value:"call",flags:[],floats:[5f,0f,0f,0f],tracker:[]}
execute if score #dialog Dialog matches 47 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:items/game_boy_horror/turn_screen_to_forced_value {value:"call",flags:[],floats:[9f,0f,0f,0f],tracker:[]}
execute if score #dialog Dialog matches 48..106 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:items/game_boy_horror/turn_screen_to_forced_value {value:"call",flags:[],floats:[8f,0f,0f,0f],tracker:[]}
execute if score #dialog Dialog matches 107..116 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:items/game_boy_horror/turn_screen_to_forced_value {value:"call",flags:[],floats:[2f,0f,0f,0f],tracker:[]}
execute if score #dialog Dialog matches 42 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.fire_element_medal.1","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 42 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.fire_element_medal.1.more"}]}
execute if score #dialog Dialog matches 42 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohdoh_luigi_tahmentahkeh_suku_suku neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 107 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.fire_element_medal.2"}]}
execute if score #dialog Dialog matches 107 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.yahmum_bah neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 109 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.yahmum_bah
execute if score #dialog Dialog matches 109 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.fire_element_medal.3"}]}
execute if score #dialog Dialog matches 109 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.fire_element_medal.3.more"}]}
execute if score #dialog Dialog matches 109 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hap_poh_tatta_tatta neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 110 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.hap_poh_tatta_tatta
execute if score #dialog Dialog matches 110 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.fire_element_medal.4"}]}
execute if score #dialog Dialog matches 110 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.fire_element_medal.4.more"}]}
execute if score #dialog Dialog matches 110 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_soh_kah_oydohroh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 111 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_soh_kah_oydohroh
execute if score #dialog Dialog matches 111 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.fire_element_medal.5"}]}
execute if score #dialog Dialog matches 111 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.fire_element_medal.5.more"}]}
execute if score #dialog Dialog matches 111 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 112 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh
execute if score #dialog Dialog matches 112 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.fire_element_medal.6"}]}
execute if score #dialog Dialog matches 112 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.fire_element_medal.6.more"}]}
execute if score #dialog Dialog matches 112 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 113 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh
execute if score #dialog Dialog matches 113 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.fire_element_medal.7"}]}
execute if score #dialog Dialog matches 113 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.fire_element_medal.7.more"}]}
execute if score #dialog Dialog matches 113 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.suku_suku_oydohrom_odoh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 114 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.suku_suku_oydohrom_odoh
execute if score #dialog Dialog matches 114 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.fire_element_medal.8"}]}
execute if score #dialog Dialog matches 114 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.fire_element_medal.8.more"}]}
execute if score #dialog Dialog matches 114 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hey_hey_nohjeebeedoggy_oomahkah neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 115 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.hey_hey_nohjeebeedoggy_oomahkah
execute if score #dialog Dialog matches 115 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.fire_element_medal.9"}]}
execute if score #dialog Dialog matches 115 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.fire_element_medal.9.more"}]}
execute if score #dialog Dialog matches 115 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_suku_suku_oydohroh_odoh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 116 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_suku_suku_oydohroh_odoh
execute if score #dialog Dialog matches 116 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.fire_element_medal.10"}]}
execute if score #dialog Dialog matches 116 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.fire_element_medal.10.more"}]}
execute if score #dialog Dialog matches 116 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.odoh_luigi neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 117 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 117 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 137 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/enthusiastic
execute if score #dialog Dialog matches 137 run scoreboard players set #dialog Dialog -1