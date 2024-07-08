execute if score #dialog Dialog matches 53 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 32..52 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 28..31 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 7..27 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 2..6 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..53 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 54
execute if score #dialog Dialog matches ..53 unless score #dialog Dialog matches 7..26 unless score #dialog Dialog matches 32..51 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 7..26 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 32..51 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 54.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=e_gadd,tag=same_room,limit=1] remove freeze_animation
execute if score #dialog Dialog matches 1 as @e[tag=e_gadd,tag=same_room,limit=1] at @s facing entity @a[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if score #dialog Dialog matches 1 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if score #dialog Dialog matches 1..3 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 1 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.released_boos_talk.1","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 1 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.released_boos_talk.1.more"}]}
execute if score #dialog Dialog matches 1 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.luigi_oui neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 3 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.luigi_oui
execute if score #dialog Dialog matches 3 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.released_boos_talk.2"}]}
execute if score #dialog Dialog matches 3 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.released_boos_talk.2.more"}]}
execute if score #dialog Dialog matches 3 if entity @a[tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_hey_hey_suu_dehkooroo_hah neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 4..5 as @a[tag=same_room,tag=!spectator_no_sound] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 4 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_hey_hey_suu_dehkooroo_hah
execute if score #dialog Dialog matches 4 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.released_boos_talk.3"}]}
execute if score #dialog Dialog matches 4 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.released_boos_talk.3.more"}]}
execute if score #dialog Dialog matches 4 if entity @a[tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_suku_suku_oydohroh_odoh neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 5 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"explain"}
execute if score #dialog Dialog matches 5 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_suku_suku_oydohroh_odoh
execute if score #dialog Dialog matches 5 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.released_boos_talk.4"}]}
execute if score #dialog Dialog matches 5 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.released_boos_talk.4.more"}]}
execute if score #dialog Dialog matches 5 if entity @a[tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.suku_suku_ck_ck_yahboh_yahboh neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 6 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 6 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.suku_suku_ck_ck_yahboh_yahboh
execute if score #dialog Dialog matches 6 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.released_boos_talk.5"}]}
execute if score #dialog Dialog matches 6 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.released_boos_talk.5.more"}]}
execute if score #dialog Dialog matches 6 if entity @a[tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_oui_oohmakah_tahmentahkeh neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 7 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/nod
execute if score #dialog Dialog matches 27..30 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/think
execute if score #dialog Dialog matches 27 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_oui_oohmakah_tahmentahkeh
execute if score #dialog Dialog matches 27 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.released_boos_talk.6"}]}
execute if score #dialog Dialog matches 27 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.released_boos_talk.6.more"}]}
execute if score #dialog Dialog matches 27 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.hey_hey_suu_tahmentahkeh_oydohroh neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 29 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.hey_hey_suu_tahmentahkeh_oydohroh
execute if score #dialog Dialog matches 29 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.released_boos_talk.7"}]}
execute if score #dialog Dialog matches 29 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.released_boos_talk.7.more"}]}
execute if score #dialog Dialog matches 29 if entity @a[tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.shortlaugh_oomahkah_bohh_squirtbottlelaugh neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 30 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"flutter"}
execute if score #dialog Dialog matches 30 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.shortlaugh_oomahkah_bohh_squirtbottlelaugh
execute if score #dialog Dialog matches 30 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.released_boos_talk.8"}]}
execute if score #dialog Dialog matches 30 if entity @a[tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 31 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 31 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh
execute if score #dialog Dialog matches 31 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.released_boos_talk.9","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 31 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.released_boos_talk.9.more"}]}
execute if score #dialog Dialog matches 31 if entity @a[tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 32 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"explain"}
execute if score #dialog Dialog matches 32 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/enthusiastic
execute if score #dialog Dialog matches 52 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh
execute if score #dialog Dialog matches 52 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.released_boos_talk.10"}]}
execute if score #dialog Dialog matches 52 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.released_boos_talk.10.more"}]}
execute if score #dialog Dialog matches 52 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.oui_soh_suu_suhm_ck_ck_yuuohh neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 54 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 54 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.oui_soh_suu_suhm_ck_ck_yuuohh
execute if score #dialog Dialog matches 54 run data modify storage luigis_mansion:data current_state.current_data.obtained_items merge value {boo_radar:1b}
execute if score #dialog Dialog matches 54 run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"underground_lab"},room:-1,progress:0}
execute if score #dialog Dialog matches 54 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches 54 run scoreboard players set #dialog Dialog -1