execute if score #dialog Dialog matches 51.. run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 43..50 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 22..42 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 21 if entity @a[tag=same_room,tag=game_boy_horror_selected,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..20 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..70 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 71
execute if score #dialog Dialog matches 42..50 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 51.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

execute if score #dialog Dialog matches 1..19 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 20 as @a[tag=same_room] run tellraw @s {"type":"translatable","translate":"chat.type.text","with":[{"type":"selector","selector":"@s","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.player.ringing_game_boy_horror"}]}
execute if score #dialog Dialog matches 20..21 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 20..41 as @a[tag=same_room] run function luigis_mansion:other/music/set/game_boy_horror_calling

execute if score #dialog Dialog matches 22 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/nod
execute if score #dialog Dialog matches 42..50 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/game_boy_horror
execute if score #dialog Dialog matches 42..50 as @a[tag=same_room] run function luigis_mansion:other/music/set/game_boy_horror
execute if score #dialog Dialog matches 42..50 run scoreboard players set @a[tag=same_room] ForceScreen 1
execute if score #dialog Dialog matches 42 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ice_element_medal.1","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 42 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ice_element_medal.1.more"}]}
execute if score #dialog Dialog matches 42 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi_odoh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 44 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.luigi_odoh
execute if score #dialog Dialog matches 44 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ice_element_medal.2"}]}
execute if score #dialog Dialog matches 44 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.pen_pen neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 45 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.pen_pen
execute if score #dialog Dialog matches 45 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ice_element_medal.3"}]}
execute if score #dialog Dialog matches 45 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ice_element_medal.3.more"}]}
execute if score #dialog Dialog matches 45 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hoo_hoo_jeemee_jeemee_kehkeh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 46 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.hoo_hoo_jeemee_jeemee_kehkeh
execute if score #dialog Dialog matches 46 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ice_element_medal.4"}]}
execute if score #dialog Dialog matches 46 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ice_element_medal.4.more"}]}
execute if score #dialog Dialog matches 46 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.gay_roon_ehdeedee_odoh_tahmentahkeh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 47 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.gay_roon_ehdeedee_odoh_tahmentahkeh
execute if score #dialog Dialog matches 47 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ice_element_medal.5"}]}
execute if score #dialog Dialog matches 47 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ice_element_medal.5.more"}]}
execute if score #dialog Dialog matches 47 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oomahkah_oui_soy_soh_ooh_ck_ck neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 48 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.oomahkah_oui_soy_soh_ooh_ck_ck
execute if score #dialog Dialog matches 48 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ice_element_medal.6"}]}
execute if score #dialog Dialog matches 48 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ice_element_medal.6.more"}]}
execute if score #dialog Dialog matches 48 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hmmm_nohjeebeedoggy_oui_ohmoogah neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 49 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.hmmm_nohjeebeedoggy_oui_ohmoogah
execute if score #dialog Dialog matches 49 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ice_element_medal.7"}]}
execute if score #dialog Dialog matches 49 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ice_element_medal.7.more"}]}
execute if score #dialog Dialog matches 49 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohyah_ohyahmah_hey_hey_oui neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 50 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ohyah_ohyahmah_hey_hey_oui
execute if score #dialog Dialog matches 50 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ice_element_medal.8","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 50 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ice_element_medal.8.more"}]}
execute if score #dialog Dialog matches 50 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mah_mah_mah_luigi_oui neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 51 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 51 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 71 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/enthusiastic
execute if score #dialog Dialog matches 71 run scoreboard players set #dialog Dialog -1