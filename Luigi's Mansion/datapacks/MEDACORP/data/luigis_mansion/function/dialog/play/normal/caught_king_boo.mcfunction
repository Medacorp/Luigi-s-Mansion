execute store result score #temp ID run data get storage luigis_mansion:data dialogs[0].painting_grabbing_player
execute as @e[tag=player,tag=same_room] if score @s ID = #temp ID run tag @s add painting_grabbing_player
scoreboard players reset #temp ID

execute if score #dialog Dialog matches 63.. run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 59..62 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 38..58 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 31..37 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 25..30 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 31
execute if score #dialog Dialog matches 23 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 22 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 21 as @e[tag=luigi,tag=same_room,tag=game_boy_horror_selected,limit=1] store result storage luigis_mansion:data dialogs[0].painting_grabbing_player int 1 run scoreboard players get @s ID
execute if score #dialog Dialog matches 21 if entity @e[tag=luigi,tag=same_room,tag=game_boy_horror_selected,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..20 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 22..37 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 38
execute if score #dialog Dialog matches 58..62 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 63
execute if score #dialog Dialog matches 22..62 unless score #dialog Dialog matches 38..58 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 38..58 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 63.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

tag @e[tag=same_room,tag=furniture,tag=incense] remove no_ai
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1..19 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 20 as @a[tag=same_room] run tellraw @s {"type":"translatable","translate":"chat.type.text","with":[{"type":"selector","selector":"@s","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.player.ringing_game_boy_horror"}]}
execute if score #dialog Dialog matches 20..23 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 20..23 as @a[tag=same_room] run function luigis_mansion:other/music/set/game_boy_horror

execute if score #dialog Dialog matches 22 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.1"}]}
execute if score #dialog Dialog matches 22 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 24..29 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:items/game_boy_horror/turn_screen_to_forced_value {value:"call",flags:[],floats:[5f,0f,0f,0f],tracker:[]}
execute if score #dialog Dialog matches 29..61 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:items/game_boy_horror/turn_screen_to_forced_value {value:"call",flags:[],floats:[2f,0f,0f,0f],tracker:[]}
execute if score #dialog Dialog matches 29..61 as @a[tag=same_room] run function luigis_mansion:other/music/set/e_gadd_call
execute if score #dialog Dialog matches 29..32 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/game_boy_horror
execute if score #dialog Dialog matches 29 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.luigi
execute if score #dialog Dialog matches 29 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.2","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 29 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.2.more"}]}
execute if score #dialog Dialog matches 29 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohmayah_luigi neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 31 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ohmayah_luigi
execute if score #dialog Dialog matches 31 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.3"}]}
execute if score #dialog Dialog matches 31 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.3.more"}]}
execute if score #dialog Dialog matches 31 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.gay_roon_ehdeedee_odoh_tahmentahkeh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 32 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.gay_roon_ehdeedee_odoh_tahmentahkeh
execute if score #dialog Dialog matches 32 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.4"}]}
execute if score #dialog Dialog matches 32 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.4.more"}]}
execute if score #dialog Dialog matches 32 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oh_tohmah_mee_ohyah_tehmehno_tahkeh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 33 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.oh_tohmah_mee_ohyah_tehmehno_tahkeh
execute if score #dialog Dialog matches 33 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.5"}]}
execute if score #dialog Dialog matches 33 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.5.more"}]}
execute if score #dialog Dialog matches 33 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohyah_ohyahmah_hey_hey_oui neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 34..37 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/think
execute if score #dialog Dialog matches 34 if entity @a[tag=next_dialog_line,limit=1] if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ohyah_ohyahmah_hey_hey_oui
execute if score #dialog Dialog matches 34 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.6"}]}
execute if score #dialog Dialog matches 34 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 35 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh
execute if score #dialog Dialog matches 35 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.7"}]}
execute if score #dialog Dialog matches 35 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.7.more"}]}
execute if score #dialog Dialog matches 35 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hey_hey_nohjeebeedoggy_oomahkah_ooh_ooh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 36 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.hey_hey_nohjeebeedoggy_oomahkah_ooh_ooh
execute if score #dialog Dialog matches 36 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.8"}]}
execute if score #dialog Dialog matches 36 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.8.more"}]}
execute if score #dialog Dialog matches 36 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_hey_hey_suu_dehkooroo_hah neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 37 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_hey_hey_suu_dehkooroo_hah
execute if score #dialog Dialog matches 37 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.9","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 37 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.9.more"}]}
execute if score #dialog Dialog matches 37 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oh_tohmah_poheh_jeemee_jeemee neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 38 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 38..57 run tag @a[tag=painting_grabbing_player,limit=1,x=636.5,y=93,z=-17.5,distance=0.2..] add walking
execute if score #dialog Dialog matches 38..57 as @e[tag=painting_grabbing_player,limit=1] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s[x=636.5,y=93,z=-17.5,distance=0.2..] facing 636 93 -18",teleport:"^ ^ ^0.1 ~ ~"}

execute if score #dialog Dialog matches 58..62 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/think
execute if score #dialog Dialog matches 58 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.oh_tohmah_poheh_jeemee_jeemee
execute if score #dialog Dialog matches 58 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.10"}]}
execute if score #dialog Dialog matches 58 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.shortlaugh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 60 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.shortlaugh
execute if score #dialog Dialog matches 60 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.11"}]}
execute if score #dialog Dialog matches 60 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.11.more"}]}
execute if score #dialog Dialog matches 60 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.suku_suku_ck_ck_yahboh_yahboh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 61 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.suku_suku_ck_ck_yahboh_yahboh
execute if score #dialog Dialog matches 61 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.12"}]}
execute if score #dialog Dialog matches 61 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.12.more"}]}
execute if score #dialog Dialog matches 61 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hey_hey_suu_tahmentahkeh_oydohroh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 62 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.hey_hey_suu_tahmentahkeh_oydohroh
execute if score #dialog Dialog matches 62 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.13"}]}
execute if score #dialog Dialog matches 62 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.caught_king_boo.13.more"}]}
execute if score #dialog Dialog matches 62 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohyah_mee neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 63 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 83 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/nod

execute if score #dialog Dialog matches 103 as @a[tag=same_room] run function luigis_mansion:other/music/set/collect_marios_painting
execute if score #dialog Dialog matches 103..182 run tag @a[tag=same_room,x=636.5,y=93,z=-17.5,distance=0.2..] add walking
execute if score #dialog Dialog matches 103..182 as @e[tag=painting_grabbing_player,limit=1] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s[x=636.5,y=93,z=-17.5,distance=0.2..] facing 636 93 -18",teleport:"^ ^ ^0.05 ~ ~"}
execute if score #dialog Dialog matches 183 as @e[tag=painting_grabbing_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"@s 636 93 -18 90 0"}
execute if score #dialog Dialog matches 183 as @e[tag=luigi,tag=painting_grabbing_player,limit=1] run function luigis_mansion:entities/luigi/animation/set/grab_marios_painting
execute if score #dialog Dialog matches 183 run tag @e[tag=same_room,tag=mario,tag=calm,limit=1] add remove_from_existence
execute if score #dialog Dialog matches 303..362 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing 653 93 -18",teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 304 as @e[tag=luigi,tag=painting_grabbing_player,limit=1] run function luigis_mansion:entities/luigi/animation/set/leave_with_marios_painting
execute if score #dialog Dialog matches 304..362 run tag @a[tag=same_room,tag=!painting_grabbing_player,x=653.5,y=93,z=-17.5,distance=0.2..] add walking
execute if score #dialog Dialog matches 304..362 as @e[tag=luigi,tag=same_room,tag=!painting_grabbing_player] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s[x=653.5,y=93,z=-17.5,distance=0.2..] facing 653 93 -18",teleport:"^ ^ ^0.1 ~ ~"}
execute if score #dialog Dialog matches 363 run function luigis_mansion:room/normal/end
execute if score #dialog Dialog matches 363 run scoreboard players set #dialog Dialog -1

tag @e[tag=painting_grabbing_player] remove painting_grabbing_player