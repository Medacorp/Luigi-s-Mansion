execute if score #dialog Dialog matches 24..29 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 4..23 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 24
execute if score #dialog Dialog matches 3..22 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 2 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 29
execute if score #dialog Dialog matches ..30 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 31 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=e_gadd,tag=same_room,limit=1] remove freeze_animation
execute if score #dialog Dialog matches 1 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/think
execute if score #dialog Dialog matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.gallery.where.1"}]}
execute if score #dialog Dialog matches 1 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.oui_soh_suu_suhm_ck_ck_yuuohh neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 3 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/nod
execute if score #dialog Dialog matches 3 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.oui_soh_suu_suhm_ck_ck_yuuohh
execute if score #dialog Dialog matches 3 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.gallery.where.2"}]}
execute if score #dialog Dialog matches 3 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.gallery.where.2.more"}]}
execute if score #dialog Dialog matches 3 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.oomahkah_oui_soy_soh_ooh_ck_ck neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 23..24 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust

execute if score #dialog Dialog matches 24 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.oomahkah_oui_soy_soh_ooh_ck_ck
execute if score #dialog Dialog matches 24 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.gallery.where.3"}]}
execute if score #dialog Dialog matches 24 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.gallery.where.3.more"}]}
execute if score #dialog Dialog matches 24 if entity @a[tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.hmmm_nohjeebeedoggy_ohmoogah neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 25 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"explain"}
execute if score #dialog Dialog matches 25..27 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 25 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.hmmm_nohjeebeedoggy_ohmoogah
execute if score #dialog Dialog matches 25 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.gallery.where.4"}]}
execute if score #dialog Dialog matches 25 if entity @a[tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.mee_oomahkah_yahboh_yahboh neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 26 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mee_oomahkah_yahboh_yahboh
execute if score #dialog Dialog matches 26 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.gallery.where.5"}]}
execute if score #dialog Dialog matches 26 if entity @a[tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.orohroh_odoh_pahn_pahn neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 27 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"shame"}
execute if score #dialog Dialog matches 27 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.orohroh_odoh_pahn_pahn
execute if score #dialog Dialog matches 27 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.gallery.where.6"}]}
execute if score #dialog Dialog matches 27 if entity @a[tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_suku_suku_oydohroh_odoh neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 28 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if score #dialog Dialog matches 28 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 28 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_suku_suku_oydohroh_odoh
execute if score #dialog Dialog matches 28 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.gallery.where.7"}]}
execute if score #dialog Dialog matches 28 if entity @a[tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.yahmum_baah neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 29 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 29 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 29 run scoreboard players set #dialog Dialog -1