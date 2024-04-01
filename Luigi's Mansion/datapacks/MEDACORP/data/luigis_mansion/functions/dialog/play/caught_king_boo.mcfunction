execute if score #dialog Dialog matches 23..35 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 22 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 21 if entity @a[tag=same_room,tag=game_boy_horror_selected,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..20 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..35 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 36
execute if score #dialog Dialog matches 22..35 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 36.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1..19 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 20 as @a[tag=same_room] run tellraw @s {"type":"translatable","translate":"chat.type.text","with":[{"type":"selector","selector":"@s","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.player.ringing_game_boy_horror"}]}
execute if score #dialog Dialog matches 20..23 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 20..23 as @a[tag=same_room] run function luigis_mansion:other/music/set/game_boy_horror_calling

execute if score #dialog Dialog matches 22 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.1"}]}
execute if score #dialog Dialog matches 22 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 24.. run scoreboard players set @a[tag=same_room] ForceScreen 1
execute if score #dialog Dialog matches 24.. as @a[tag=same_room] run function luigis_mansion:other/music/set/game_boy_horror
execute if score #dialog Dialog matches 24..27 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/game_boy_horror
execute if score #dialog Dialog matches 24 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.luigi
execute if score #dialog Dialog matches 24 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.2","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 24 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.2.more"}]}
execute if score #dialog Dialog matches 24 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohmayah_luigi neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 25 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ohmayah_luigi
execute if score #dialog Dialog matches 25 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.3"}]}
execute if score #dialog Dialog matches 25 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.3.more"}]}
execute if score #dialog Dialog matches 25 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.gay_roon_ehdeedee_odoh_tahmentahkeh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 26 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.gay_roon_ehdeedee_odoh_tahmentahkeh
execute if score #dialog Dialog matches 26 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.4"}]}
execute if score #dialog Dialog matches 26 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.4.more"}]}
execute if score #dialog Dialog matches 26 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oh_tohmah_mee_ohyah_tehmehno_tahkeh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 27 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.oh_tohmah_mee_ohyah_tehmehno_tahkeh
execute if score #dialog Dialog matches 27 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.5"}]}
execute if score #dialog Dialog matches 27 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.5.more"}]}
execute if score #dialog Dialog matches 27 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohyah_ohyahmah_hey_hey_oui neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 28..35 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/think
execute if score #dialog Dialog matches 28 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ohyah_ohyahmah_hey_hey_oui
execute if score #dialog Dialog matches 28 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.6"}]}
execute if score #dialog Dialog matches 28 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 29 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh
execute if score #dialog Dialog matches 29 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.7"}]}
execute if score #dialog Dialog matches 29 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.7.more"}]}
execute if score #dialog Dialog matches 29 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hey_hey_nohjeebeedoggy_oomahkah_ooh_ooh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 30 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.hey_hey_nohjeebeedoggy_oomahkah_ooh_ooh
execute if score #dialog Dialog matches 30 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.8"}]}
execute if score #dialog Dialog matches 30 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.8.more"}]}
execute if score #dialog Dialog matches 30 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_hey_hey_suu_dehkooroo_hah neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 31 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_hey_hey_suu_dehkooroo_hah
execute if score #dialog Dialog matches 31 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.9","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 31 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.9.more"}]}
execute if score #dialog Dialog matches 31 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oh_tohmah_poheh_jeemee_jeemee neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 32 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.oh_tohmah_poheh_jeemee_jeemee
execute if score #dialog Dialog matches 32 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.10"}]}
execute if score #dialog Dialog matches 32 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.shortlaugh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 33 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.shortlaugh
execute if score #dialog Dialog matches 33 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.11"}]}
execute if score #dialog Dialog matches 33 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.11.more"}]}
execute if score #dialog Dialog matches 33 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.suku_suku_ck_ck_yahboh_yahboh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 34 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.suku_suku_ck_ck_yahboh_yahboh
execute if score #dialog Dialog matches 34 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.12"}]}
execute if score #dialog Dialog matches 34 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.12.more"}]}
execute if score #dialog Dialog matches 34 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hey_hey_suu_tahmentahkeh_oydohroh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 35 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.hey_hey_suu_tahmentahkeh_oydohroh
execute if score #dialog Dialog matches 35 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.13"}]}
execute if score #dialog Dialog matches 35 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.13.more"}]}
execute if score #dialog Dialog matches 35 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohyah_mee neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 36 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 36 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/nod
execute if score #dialog Dialog matches 36 run scoreboard players set #dialog Dialog -1
