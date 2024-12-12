execute if score #dialog Dialog matches 100 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 79..98 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 78 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 57..76 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 54..56 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 34..53 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 54
execute if score #dialog Dialog matches 33..52 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 26..32 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 6..25 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 26
execute if score #dialog Dialog matches 5..24 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 4 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=select_dialog_branch_nothing,limit=1] run scoreboard players set #dialog Dialog 100
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=select_dialog_branch_leave,limit=1] run scoreboard players set #dialog Dialog 78
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=select_dialog_branch_what,limit=1] run scoreboard players set #dialog Dialog 32
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=select_dialog_branch_where,limit=1] run scoreboard players set #dialog Dialog 4
execute if score #dialog Dialog matches 2 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..2 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 3
execute if score #dialog Dialog matches 4..76 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 77
execute if score #dialog Dialog matches 78..98 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 99
execute if score #dialog Dialog matches 100 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 101
execute if score #dialog Dialog matches ..100 unless score #dialog Dialog matches 3 unless score #dialog Dialog matches 31 unless score #dialog Dialog matches 57..77 unless score #dialog Dialog matches 79..99 unless score #dialog Dialog matches 101 as @a[tag=same_room,tag=!spectator] unless entity @s[tag=dialog_menu,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 3 as @a[tag=same_room,tag=!spectator,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/choice/gallery
execute if score #dialog Dialog matches 31 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 57..77 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 79..99 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 101 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=e_gadd,tag=same_room,limit=1] remove freeze_animation
tag @e[tag=e_gadd,tag=same_room,limit=1] add look_at_player
execute if score #dialog Dialog matches 1 as @e[tag=e_gadd,tag=same_room,limit=1] at @s facing entity @e[tag=luigi,tag=same_room,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if score #dialog Dialog matches 1 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if score #dialog Dialog matches 1 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 1 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.gallery.repeat.1","with":[{"type":"selector","selector":"@a[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 1 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.gallery.repeat.1.more"}]}
execute if score #dialog Dialog matches 1 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.luigi_oui neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 3 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 3 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/think

#Branch: Where
execute if score #dialog Dialog matches 4 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/think
execute if score #dialog Dialog matches 4 if entity @a[tag=select_dialog_branch_where,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.luigi_oui
execute if score #dialog Dialog matches 4 if entity @a[tag=select_dialog_branch_where,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.gallery.where.1"}]}
execute if score #dialog Dialog matches 4 if entity @a[tag=select_dialog_branch_where,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.oui_soh_suu_suhm_ck_ck_yuuohh neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 5 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/nod
execute if score #dialog Dialog matches 5 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.oui_soh_suu_suhm_ck_ck_yuuohh
execute if score #dialog Dialog matches 5 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.gallery.where.2"}]}
execute if score #dialog Dialog matches 5 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.gallery.where.2.more"}]}
execute if score #dialog Dialog matches 5 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.oomahkah_oui_soy_soh_ooh_ck_ck neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 25..26 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle

execute if score #dialog Dialog matches 26 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.oomahkah_oui_soy_soh_ooh_ck_ck
execute if score #dialog Dialog matches 26 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.gallery.where.3"}]}
execute if score #dialog Dialog matches 26 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.gallery.where.3.more"}]}
execute if score #dialog Dialog matches 26 if entity @a[tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.hmmm_nohjeebeedoggy_ohmoogah neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 27 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"explain"}
execute if score #dialog Dialog matches 27..29 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 27 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.hmmm_nohjeebeedoggy_ohmoogah
execute if score #dialog Dialog matches 27 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.gallery.where.4"}]}
execute if score #dialog Dialog matches 27 if entity @a[tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.mee_oomahkah_yahboh_yahboh neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 28 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mee_oomahkah_yahboh_yahboh
execute if score #dialog Dialog matches 28 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.gallery.where.5"}]}
execute if score #dialog Dialog matches 28 if entity @a[tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.orohroh_odoh_pahn_pahn neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 29 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"shame"}
execute if score #dialog Dialog matches 29 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.orohroh_odoh_pahn_pahn
execute if score #dialog Dialog matches 29 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.gallery.where.6"}]}
execute if score #dialog Dialog matches 29 if entity @a[tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_suku_suku_oydohroh_odoh neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 30 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if score #dialog Dialog matches 30 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 30 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_suku_suku_oydohroh_odoh
execute if score #dialog Dialog matches 30 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.gallery.where.7"}]}
execute if score #dialog Dialog matches 30 if entity @a[tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.yahmum_baah neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 31 run scoreboard players set #dialog Dialog -1

#Branch: What
execute if score #dialog Dialog matches 32 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/think
execute if score #dialog Dialog matches 32 if entity @a[tag=select_dialog_branch_what,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.luigi_oui
execute if score #dialog Dialog matches 32 if entity @a[tag=select_dialog_branch_what,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.gallery.what.1"}]}
execute if score #dialog Dialog matches 32 if entity @a[tag=select_dialog_branch_what,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.hap_poh_oomahkah_tatta_tatta neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 33 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/nod
execute if score #dialog Dialog matches 33 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.hap_poh_oomahkah_tatta_tatta
execute if score #dialog Dialog matches 33 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.gallery.what.2"}]}
execute if score #dialog Dialog matches 33 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.gallery.what.2.more"}]}
execute if score #dialog Dialog matches 33 if entity @a[tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.hey_hey_suu_tahmentahkeh_oydohroh neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 53..56 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle

execute if score #dialog Dialog matches 54 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.hey_hey_suu_tahmentahkeh_oydohroh
execute if score #dialog Dialog matches 54 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.gallery.what.3"}]}
execute if score #dialog Dialog matches 54 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.gallery.what.3.more"}]}
execute if score #dialog Dialog matches 54 if entity @a[tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_hey_hey_suu_dehkooroo_hah neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 55 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_hey_hey_suu_dehkooroo_hah
execute if score #dialog Dialog matches 55 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.gallery.what.4"}]}
execute if score #dialog Dialog matches 55 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.gallery.what.4.more"}]}
execute if score #dialog Dialog matches 55 if entity @a[tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.oomahkah_oui_soy_soh_ooh_ck_ck neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 56 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.oomahkah_oui_soy_soh_ooh_ck_ck
execute if score #dialog Dialog matches 56 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.gallery.what.5"}]}
execute if score #dialog Dialog matches 56 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.gallery.what.5.more"}]}
execute if score #dialog Dialog matches 56 if entity @a[tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.mee_kehkeh neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 57 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/enthusiastic
execute if score #dialog Dialog matches 77 run scoreboard players set #dialog Dialog -1

#Branch: Leave
execute if score #dialog Dialog matches 78 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if score #dialog Dialog matches 78 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/think
execute if score #dialog Dialog matches 78 if entity @a[tag=select_dialog_branch_leave,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.luigi_oui
execute if score #dialog Dialog matches 78 if entity @a[tag=select_dialog_branch_leave,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.gallery.leave.1"}]}
execute if score #dialog Dialog matches 78 if entity @a[tag=select_dialog_branch_leave,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.yahboh_yahboh neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 79 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/nod
execute if score #dialog Dialog matches 99 as @a[tag=same_room] run function luigis_mansion:room/underground_lab/warp_to
execute if score #dialog Dialog matches 99 run scoreboard players set #dialog Dialog -1

#Branch: Nothing
execute if score #dialog Dialog matches 100 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if score #dialog Dialog matches 100 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/think
execute if score #dialog Dialog matches 100 if entity @a[tag=select_dialog_branch_nothing,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.luigi_oui
execute if score #dialog Dialog matches 100 if entity @a[tag=select_dialog_branch_nothing,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.gallery.nothing.1"}]}
execute if score #dialog Dialog matches 100 if entity @a[tag=select_dialog_branch_nothing,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.yahmum_bah neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 101 run scoreboard players set #dialog Dialog -1

execute if score #dialog Dialog matches -1 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches -1 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation
tag @a[tag=same_room] remove select_dialog_branch_where
tag @a[tag=same_room] remove select_dialog_branch_what
tag @a[tag=same_room] remove select_dialog_branch_leave
tag @a[tag=same_room] remove select_dialog_branch_nothing