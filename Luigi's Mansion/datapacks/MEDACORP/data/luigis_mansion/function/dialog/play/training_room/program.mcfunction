execute if score #dialog Dialog matches 438 run scoreboard players add #dialog Dialog 1
execute if entity @a[scores={Health=..1},tag=same_room] run scoreboard players set #dialog Dialog 438
execute if score #dialog Dialog matches 417..436 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 437
execute if score #dialog Dialog matches 416..435 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 395..414 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 415
execute if score #dialog Dialog matches 394..413 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 393 if entity @a[tag=same_room,tag=select_dialog_branch_no,limit=1] run scoreboard players set #dialog Dialog 416
execute if score #dialog Dialog matches 393 if entity @a[tag=same_room,tag=select_dialog_branch_yes,limit=1] run scoreboard players set #dialog Dialog 394
execute if score #dialog Dialog matches 391..392 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 140..390 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 137..139 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 135..136 unless entity @e[tag=ghost,tag=same_room,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 134 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 132..133 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 130..131 unless entity @e[tag=ghost,tag=same_room,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 129 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 126..128 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 124..125 unless entity @e[tag=ghost,tag=same_room,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 123 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 121..122 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 119..120 unless entity @e[tag=ghost,tag=same_room,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 118 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 116..117 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 114..115 unless entity @e[tag=ghost,tag=same_room,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 113 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 105..112 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 4..104 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 2..3 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 439 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 109
execute if score #dialog Dialog matches 438..439 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 390
execute if score #dialog Dialog matches 416..436 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 437
execute if score #dialog Dialog matches 394..414 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 415
execute if score #dialog Dialog matches 390..392 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 393
execute if score #dialog Dialog matches ..389 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 390
execute unless score #dialog Dialog matches 4..103 unless score #dialog Dialog matches 114 unless score #dialog Dialog matches 119 unless score #dialog Dialog matches 124 unless score #dialog Dialog matches 130 unless score #dialog Dialog matches 135 unless score #dialog Dialog matches 140..390 unless score #dialog Dialog matches 393 unless score #dialog Dialog matches 415 unless score #dialog Dialog matches 437 as @a[tag=same_room,tag=!spectator] unless entity @s[tag=dialog_menu,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 393 as @a[tag=same_room,tag=!spectator,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/choice/training_room_to_gallery
execute if score #dialog Dialog matches 4..103 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 114 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 119 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 124 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 130 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 135 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 140..390 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 415 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 437 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

tag @a[tag=same_room] add prevent_item_lock
tag @e[tag=same_room] remove freeze_animation
tag @e[tag=same_room] remove no_ai
execute unless score #dialog Dialog matches 5..103 unless score #dialog Dialog matches 113..137 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:items/game_boy_horror/turn_screen_to_forced_value {value:"call",flags:[],floats:[0f,0f,0f,0f],tracker:[]}
execute if score #dialog Dialog matches 113..132 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:items/game_boy_horror/turn_screen_to_forced_value {value:"call",flags:[],floats:[1f,0f,0f,0f],tracker:[]}
execute if score #dialog Dialog matches 133..138 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:items/game_boy_horror/turn_screen_to_forced_value {value:"call",flags:[],floats:[6f,0f,0f,0f],tracker:[]}
execute if score #dialog Dialog matches 1..3 run scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute if score #dialog Dialog matches 1..3 as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1..3 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/game_boy_horror
execute if score #dialog Dialog matches 1 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.oui_oydohroh_tahmentahkeh2
execute if score #dialog Dialog matches 1 if data storage luigis_mansion:data rooms.training_room{cleared:1b} run tag @a[tag=same_room,limit=1] add next_dialog_line
execute if score #dialog Dialog matches 1 if data storage luigis_mansion:data rooms.training_room{cleared:1b} run scoreboard players set #dialog Dialog 109
execute if score #dialog Dialog matches 1 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.1"}]}
execute if score #dialog Dialog matches 1 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.1.more"}]}
execute if score #dialog Dialog matches 1 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 3 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.2"}]}
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.yahboh_yahboh_hoo_hoo_hoo neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 4 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 104..112 run scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute if score #dialog Dialog matches 104..112 as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 104..112 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 104 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.3"}]}
execute if score #dialog Dialog matches 104 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.3.more"}]}
execute if score #dialog Dialog matches 104 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hey_hey_suu_dehkooroo_hah neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 106 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.hey_hey_suu_dehkooroo_hah
execute if score #dialog Dialog matches 106 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.4"}]}
execute if score #dialog Dialog matches 106 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.keeyehroo_suu_suku_suku_ck_ck neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 107 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.keeyehroo_suu_suku_suku_ck_ck
execute if score #dialog Dialog matches 107 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.5"}]}
execute if score #dialog Dialog matches 107 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.5.more"}]}
execute if score #dialog Dialog matches 107 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 108 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh
execute if score #dialog Dialog matches 108 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.6"}]}
execute if score #dialog Dialog matches 108 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.6.more"}]}
execute if score #dialog Dialog matches 108 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hmmm_nohjeebeedoggy_oui_ohmoogah neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 109..132 as @a[tag=same_room] run function luigis_mansion:other/music/set/training
execute if score #dialog Dialog matches 109 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.hmmm_nohjeebeedoggy_oui_ohmoogah
execute if score #dialog Dialog matches 109 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ohyah_ohyahmah_hey_hey_oui
execute if score #dialog Dialog matches 109 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.7"}]}
execute if score #dialog Dialog matches 109 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mee_ohyah_mee neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 110 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mee_ohyah_mee
execute if score #dialog Dialog matches 110 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.8"}]}
execute if score #dialog Dialog matches 110 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.8.more"}]}
execute if score #dialog Dialog matches 110 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hap_poh_oomahkah_tatta_tatta neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 111 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.hap_poh_oomahkah_tatta_tatta
execute if score #dialog Dialog matches 111 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.9"}]}
execute if score #dialog Dialog matches 111 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.9.more"}]}
execute if score #dialog Dialog matches 111 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.orohroh_odoh_pahn_pahn neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 112 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.orohroh_odoh_pahn_pahn
execute if score #dialog Dialog matches 112 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.10"}]}
execute if score #dialog Dialog matches 112 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.10.more"}]}
execute if score #dialog Dialog matches 112 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hey_hey_suu_tahmentahkeh_oydohroh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 113 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 113 run function luigis_mansion:room/training_room/turn_lights/off
execute if score #dialog Dialog matches 113 run scoreboard players set #training_room TrainingRoomScore 0
execute if score #dialog Dialog matches 113 run function luigis_mansion:room/training_room/spawn_1_ghost

#114: ghosts

execute if score #dialog Dialog matches 115..117 run scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute if score #dialog Dialog matches 115..117 as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 115..117 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 115 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.11"}]}
execute if score #dialog Dialog matches 115 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.11.more"}]}
execute if score #dialog Dialog matches 115 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hap_poh_oomahkah_tatta_tatta neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 117 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.hap_poh_oomahkah_tatta_tatta
execute if score #dialog Dialog matches 117 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.12"}]}
execute if score #dialog Dialog matches 117 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.12.more"}]}
execute if score #dialog Dialog matches 117 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.orohroh_odoh_pahn_pahn neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 118 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 118 run function luigis_mansion:room/training_room/spawn_1_ghost

#119: ghosts

execute if score #dialog Dialog matches 120..122 run scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute if score #dialog Dialog matches 120..122 as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 120..122 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 120 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.13"}]}
execute if score #dialog Dialog matches 120 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.13.more"}]}
execute if score #dialog Dialog matches 120 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 122 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh
execute if score #dialog Dialog matches 122 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.14"}]}
execute if score #dialog Dialog matches 122 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.14.more"}]}
execute if score #dialog Dialog matches 122 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soh_suu_suhm_ehdeedee_ck_ck_suku_suku neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 123 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 123 run function luigis_mansion:room/training_room/spawn_1_or_2_ghosts

#124: ghosts

execute if score #dialog Dialog matches 125..128 run scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute if score #dialog Dialog matches 125..128 as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 125..128 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 125 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.15"}]}
execute if score #dialog Dialog matches 125 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.longlaugh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 127 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.longlaugh
execute if score #dialog Dialog matches 127 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.16"}]}
execute if score #dialog Dialog matches 127 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.16.more"}]}
execute if score #dialog Dialog matches 127 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oui_soh_suu_suhm_ck_ck neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 128 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.oui_soh_suu_suhm_ck_ck
execute if score #dialog Dialog matches 128 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.17"}]}
execute if score #dialog Dialog matches 128 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.17.more"}]}
execute if score #dialog Dialog matches 128 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oui_suu_soy_soh_ooh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 129 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 129 run function luigis_mansion:room/training_room/spawn_1_or_2_ghosts

#130: ghosts

execute if score #dialog Dialog matches 131..133 run scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute if score #dialog Dialog matches 131..133 as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 131..133 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 131 if score #training_room TrainingRoomScore matches ..3 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.18.bad"}]}
execute if score #dialog Dialog matches 131 if score #training_room TrainingRoomScore matches ..3 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.18.bad.more"}]}
execute if score #dialog Dialog matches 131 if score #training_room TrainingRoomScore matches ..3 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ooh_ooh_yahboh_yahboh_hoo_hoo_hoo neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 131 if score #training_room TrainingRoomScore matches 4.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.18.good"}]}
execute if score #dialog Dialog matches 131 if score #training_room TrainingRoomScore matches 4.. as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.yahboh_yahboh_hoo_hoo_hoo neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 133 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ooh_ooh_yahboh_yahboh_hoo_hoo_hoo
execute if score #dialog Dialog matches 133 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.yahboh_yahboh_hoo_hoo_hoo
execute if score #dialog Dialog matches 133 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.19"}]}
execute if score #dialog Dialog matches 133 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.tatta_tatta neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 134 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 134 run function luigis_mansion:room/training_room/spawn_5_ghosts

#135: ghosts

execute if score #dialog Dialog matches 136..159 run scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute if score #dialog Dialog matches 136..159 as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 136..159 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 136 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.20"}]}
execute if score #dialog Dialog matches 136 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.20.more"}]}
execute if score #dialog Dialog matches 136 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.gay_roon_ehdeedee_odoh_tahmentahkeh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 138..159 as @a[tag=same_room] run function luigis_mansion:other/music/set/training_stop
execute if score #dialog Dialog matches 138 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.gay_roon_ehdeedee_odoh_tahmentahkeh
execute if score #dialog Dialog matches 138 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.21"}]}
execute if score #dialog Dialog matches 138 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.yahmum_bah neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 139 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.yahmum_bah
execute if score #dialog Dialog matches 139 if score #players Totals matches 0 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.22"}]}
execute if score #dialog Dialog matches 139 if score #players Totals matches 1.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.22.more"}]}
execute if score #dialog Dialog matches 139 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oydohroh neutral @s ~ ~ ~ 1

#140 start ticking automatically

execute if score #dialog Dialog matches 160 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 160..437 as @a[tag=same_room] run function luigis_mansion:other/music/set/training_results
execute if score #dialog Dialog matches 160 run function luigis_mansion:room/training_room/turn_lights/on
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 0 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.23.0"}]}
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 0 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oui_suu_soy_soh_ooh neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.23.1"}]}
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 1 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_tahmentahkeh neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 2 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.23.2"}]}
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 2 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_tahmentahkeh neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 3 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.23.3"}]}
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 3 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_tahmentahkeh neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 4 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.23.4"}]}
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 4 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_tahmentahkeh neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 5 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.23.5","with":[{"type":"selector","selector":"@a[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 5 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.23.5.more"}]}
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 5 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.odoh_pahn_pahn neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 6 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.23.6","with":[{"type":"selector","selector":"@a[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 6 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.23.6.more"}]}
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 6 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.odoh_pahn_pahn neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 7 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.23.7","with":[{"type":"selector","selector":"@a[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 7 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.23.7.more"}]}
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 7 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.odoh_pahn_pahn neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 8 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.23.8","with":[{"type":"selector","selector":"@a[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 8 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.23.8.more"}]}
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 8 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.gay_roon_poheh_hap_poh neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 9 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.23.9","with":[{"type":"selector","selector":"@a[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 9 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.23.9.more"}]}
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 9 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.gay_roon_poheh_hap_poh neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 10 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.23.10","with":[{"type":"selector","selector":"@a[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 10 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.23.10.more"}]}
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 10 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.gay_roon_poheh_hap_poh neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 11 as @a[tag=same_room,limit=1] at @s unless entity @a[tag=same_room,distance=0.1..,limit=1] run advancement grant @s only luigis_mansion:vanilla/who_you_gonna_call
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 11 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.23.11","with":[{"type":"selector","selector":"@a[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 11 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.23.11.more"}]}
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 11 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.gay_roon_poheh_hap_poh neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 160 unless score #training_room TrainingRoomScore matches 0..11 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.23.12","with":[{"type":"selector","selector":"@a[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 160 unless score #training_room TrainingRoomScore matches 0..11 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.23.12.more"}]}
execute if score #dialog Dialog matches 160 unless score #training_room TrainingRoomScore matches 0..11 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.gay_roon_poheh_hap_poh neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 160 if score #training_room TrainingRoomScore matches 1.. run summon minecraft:firework_rocket 788 80 -8 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;14862336],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 165 if score #training_room TrainingRoomScore matches 1.. run summon minecraft:firework_rocket 788 80 -4 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;14862336],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 170 if score #training_room TrainingRoomScore matches 1.. run summon minecraft:firework_rocket 788 80 -12 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;14862336],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 175 if score #training_room TrainingRoomScore matches 5.. run summon minecraft:firework_rocket 788 81 -10 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;14853494],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 180 if score #training_room TrainingRoomScore matches 5.. run summon minecraft:firework_rocket 788 81 -6 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;14853494],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 185 if score #training_room TrainingRoomScore matches 9.. run summon minecraft:firework_rocket 788 80 -8 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;2993378],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 190 if score #training_room TrainingRoomScore matches 9.. run summon minecraft:firework_rocket 788 80 -4 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;2993378],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 195 if score #training_room TrainingRoomScore matches 9.. run summon minecraft:firework_rocket 788 80 -12 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;2993378],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 200 if score #training_room TrainingRoomScore matches 9.. run summon minecraft:firework_rocket 788 81 -10 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;2993378],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 205 if score #training_room TrainingRoomScore matches 9.. run summon minecraft:firework_rocket 788 81 -6 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;2993378],shape:"small_ball"}]}}}}

execute if score #dialog Dialog matches 250 if score #training_room TrainingRoomScore matches ..3 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.24.bad"}]}
execute if score #dialog Dialog matches 250 if score #training_room TrainingRoomScore matches ..3 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.24.bad.more"}]}
execute if score #dialog Dialog matches 250 if score #training_room TrainingRoomScore matches ..3 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soh_suu_suhm_ehdeedee_ck_ck_suku_suku neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 250 if score #training_room TrainingRoomScore matches 4..7 run scoreboard players set #dialog Dialog 390
execute if score #dialog Dialog matches 250 if score #training_room TrainingRoomScore matches 8.. if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.24.good"}]}
execute if score #dialog Dialog matches 250 if score #training_room TrainingRoomScore matches 8.. if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.24.good.more"}]}
execute if score #dialog Dialog matches 250 if score #training_room TrainingRoomScore matches 8.. as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oui_soh_suu_suhm_ck_ck neutral @s ~ ~ ~ 1

# back to selection menu
execute if score #dialog Dialog matches 390.. run scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute if score #dialog Dialog matches 390.. as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 390 run scoreboard players set @a[tag=same_room] Health 100
execute if score #dialog Dialog matches 390 as @a[tag=same_room,tag=looking_at_map] at @s run function luigis_mansion:selection_menu/game_boy_horror/map/exit
execute if score #dialog Dialog matches 390 if data storage luigis_mansion:data rooms.training_room{cleared:1b} as @a[tag=same_room] run function luigis_mansion:room/underground_lab/warp_to
execute if score #dialog Dialog matches 390 if data storage luigis_mansion:data rooms.training_room{cleared:1b} run scoreboard players set #dialog Dialog -1
execute if score #dialog Dialog matches 390 if data storage luigis_mansion:data rooms.training_room{cleared:0b} if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.25"}]}
execute if score #dialog Dialog matches 390 if data storage luigis_mansion:data rooms.training_room{cleared:0b} if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.25.more"}]}
execute if score #dialog Dialog matches 390 if data storage luigis_mansion:data rooms.training_room{cleared:0b} as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.gay_roon_ehdeedee_odoh neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 390..392 if data storage luigis_mansion:data rooms.training_room{cleared:0b} as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle

execute if score #dialog Dialog matches 392 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.gay_roon_ehdeedee_odoh
execute if score #dialog Dialog matches 392 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.26"}]}
execute if score #dialog Dialog matches 392 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.26.more"}]}
execute if score #dialog Dialog matches 392 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_oh_tohmah_tahmehno_tahkeh_bohh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 393 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/think

#Branch: Yes
execute if score #dialog Dialog matches 394 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/nod
execute if score #dialog Dialog matches 394 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_oh_tohmah_tahmehno_tahkeh_bohh
execute if score #dialog Dialog matches 394 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.26.yes.1"}]}
execute if score #dialog Dialog matches 394 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oydohroh_odoh neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 414 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle

execute if score #dialog Dialog matches 415 as @a[tag=same_room,tag=looking_at_map] at @s run function luigis_mansion:selection_menu/game_boy_horror/map/exit
execute if score #dialog Dialog matches 415 as @a[tag=same_room] run function luigis_mansion:room/gallery/warp_to
execute if score #dialog Dialog matches 415 run data modify storage luigis_mansion:data rooms.training_room merge value {cleared:1b}
execute if score #dialog Dialog matches 415 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 415 run tag @a[tag=looking_at_map,nbt={Dimension:"minecraft:overworld"},limit=1] add regenerate_map
execute if score #dialog Dialog matches 415 run scoreboard players set #dialog Dialog -1

#Branch: No
execute if score #dialog Dialog matches 416 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/nod
execute if score #dialog Dialog matches 416 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_oh_tohmah_tahmehno_tahkeh_bohh
execute if score #dialog Dialog matches 416 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.26.no.1"}]}
execute if score #dialog Dialog matches 416 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.26.no.1.more"}]}
execute if score #dialog Dialog matches 416 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohyah_mee neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 436 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle

execute if score #dialog Dialog matches 437 as @a[tag=same_room] run function luigis_mansion:room/underground_lab/warp_to
execute if score #dialog Dialog matches 437 run data modify storage luigis_mansion:data rooms.training_room merge value {cleared:1b}
execute if score #dialog Dialog matches 437 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 437 run tag @a[tag=looking_at_map,nbt={Dimension:"minecraft:overworld"},limit=1] add regenerate_map
execute if score #dialog Dialog matches 437 run scoreboard players set #dialog Dialog -1

#Branch: Defeat
execute if score #dialog Dialog matches 438 run function luigis_mansion:room/training_room/turn_lights/on
execute if score #dialog Dialog matches 438.. as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/game_boy_horror
execute if score #dialog Dialog matches 438 run scoreboard players set @a[tag=same_room] Health 100
execute if score #dialog Dialog matches 438 run scoreboard players set @a[tag=same_room] Pull 0
execute if score #dialog Dialog matches 438 run scoreboard players set #training_room TrainingRoomScore 0
execute if score #dialog Dialog matches 438 as @a[tag=same_room] at @s run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 438 as @a[tag=same_room] at @s run function luigis_mansion:entities/player/poltergust_breakage
execute if score #dialog Dialog matches 438 run tag @e[tag=ghost,tag=same_room] add vanish
execute if score #dialog Dialog matches 438 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.0","with":[{"type":"selector","selector":"@a[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 438 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.training_room.0.more"}]}
execute if score #dialog Dialog matches 438 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohyah_ohyahmah_hey_hey_oui neutral @s ~ ~ ~ 1

tag @a[tag=same_room] remove select_dialog_branch_yes
tag @a[tag=same_room] remove select_dialog_branch_no