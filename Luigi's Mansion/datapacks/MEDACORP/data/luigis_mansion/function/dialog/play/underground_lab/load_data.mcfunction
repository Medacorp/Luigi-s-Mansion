execute if score #dialog Dialog matches 44 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 23..43 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 22 if entity @a[tag=same_room,tag=select_dialog_branch_no,limit=1] run scoreboard players set #dialog Dialog 44
execute if score #dialog Dialog matches 22 if entity @a[tag=same_room,tag=select_dialog_branch_yes,limit=1] run scoreboard players set #dialog Dialog 23
execute if score #dialog Dialog matches 2..21 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 22
execute if score #dialog Dialog matches 1..20 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 23..42 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 43
execute if score #dialog Dialog matches 1..21 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 22
execute if score #dialog Dialog matches ..44 unless score #dialog Dialog matches 22..43 as @a[tag=same_room,tag=!spectator] unless entity @s[tag=dialog_menu,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 22 as @a[tag=same_room,tag=!spectator,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/choice/underground_lab_load_data
execute if score #dialog Dialog matches 23..43 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 45 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=!furniture,tag=same_room] remove freeze_animation
execute if score #dialog Dialog matches 1 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if score #dialog Dialog matches 1 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/nod
execute if score #dialog Dialog matches 1 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.underground_lab.old_data.1"}]}
execute if score #dialog Dialog matches 1 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.underground_lab.old_data.1.more"}]}
execute if score #dialog Dialog matches 1 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.ohyah_ohyahmah_hey_hey_oui neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 21 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust

execute if score #dialog Dialog matches 22 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 22 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/think

#Branch: Yes
execute if score #dialog Dialog matches 45 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ohyah_ohyahmah_hey_hey_oui
execute if score #dialog Dialog matches 23 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/nod
execute if score #dialog Dialog matches 23 as @a[tag=select_dialog_branch_yes,limit=1] run function luigis_mansion:data/load
execute if score #dialog Dialog matches 43 run scoreboard players set #dialog Dialog -1

#Branch: No
execute if score #dialog Dialog matches 44 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if score #dialog Dialog matches 44 if entity @a[tag=select_dialog_branch_no,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ohyah_ohyahmah_hey_hey_oui
execute if score #dialog Dialog matches 44 if entity @a[tag=select_dialog_branch_no,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.underground_lab.old_data.no.1"}]}
execute if score #dialog Dialog matches 44 if entity @a[tag=select_dialog_branch_no,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_oui_oohmakah_tahmentahkeh neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 45 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_oui_oohmakah_tahmentahkeh
execute if score #dialog Dialog matches 45 run scoreboard players set #dialog Dialog -1

execute if score #dialog Dialog matches -1 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches -1 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation
tag @a[tag=same_room] remove select_dialog_branch_yes
tag @a[tag=same_room] remove select_dialog_branch_no