execute if score #dialog Dialog matches 147 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 146 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 5..145 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 125..144 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 145
execute if score #dialog Dialog matches 85..124 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 125
execute if score #dialog Dialog matches 2..4 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..124 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 125
execute if score #dialog Dialog matches 126..147 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 148
execute if score #dialog Dialog matches ..146 unless score #dialog Dialog matches 5..84 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 5..84 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 147.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=e_gadd,tag=same_room,limit=1] remove freeze_animation
tag @e[tag=e_gadd,tag=same_room,limit=1] add cannot_be_removed
tag @e[tag=e_gadd,tag=same_room,limit=1] remove can_talk_to
execute if score #dialog Dialog matches 1 as @e[tag=e_gadd,tag=same_room,limit=1] at @s facing entity @e[tag=luigi,tag=same_room,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if score #dialog Dialog matches 1..4 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 1 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"e3_demo:dialog.just_money.1",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 1 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"e3_demo:dialog.just_money.1.more"}]}
execute if score #dialog Dialog matches 1 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.ohmoogah_luigi_odoh neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 3 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ohmoogah_luigi_odoh
execute if score #dialog Dialog matches 3 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"e3_demo:dialog.just_money.2"}]}
execute if score #dialog Dialog matches 3 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"e3_demo:dialog.just_money.2.more"}]}
execute if score #dialog Dialog matches 3 if entity @a[tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.soh_suu_suhm_ehdeedee_ck_ck_suku_suku neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 3 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.soh_suu_suhm_ehdeedee_ck_ck_suku_suku
execute if score #dialog Dialog matches 4 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"e3_demo:dialog.just_money.3"}]}
execute if score #dialog Dialog matches 4 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"e3_demo:dialog.just_money.3.more"}]}
execute if score #dialog Dialog matches 4 if entity @a[tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.hmmm_nohjeebeedoggy_oui_ohmoogah neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 5 run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"score_results"},room:-3,progress:0}
execute if score #dialog Dialog matches 5 run data modify storage luigis_mansion:data dialogs[-1].ending set from storage luigis_mansion:data current_state.current_data.ending_dialog
execute if score #dialog Dialog matches 5 run data modify storage luigis_mansion:data dialogs[-1].portraits set from storage luigis_mansion:data dialogs[0].portraits
execute if score #dialog Dialog matches 5 run scoreboard players set #dialog Dialog -1