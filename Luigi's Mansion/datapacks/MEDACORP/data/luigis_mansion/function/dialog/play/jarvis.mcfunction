execute if score #dialog Dialog matches 27 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 21..25 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 20 if entity @a[tag=same_room,tag=select_dialog_branch_no,limit=1] run scoreboard players set #dialog Dialog 27
execute if score #dialog Dialog matches 20 if entity @a[tag=same_room,tag=select_dialog_branch_yes,limit=1] run scoreboard players set #dialog Dialog 21
execute if score #dialog Dialog matches 18..19 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 17 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 12..17 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..11 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..19 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 20
execute if score #dialog Dialog matches 21..25 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 26
execute if score #dialog Dialog matches 27 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 28
execute if score #dialog Dialog matches 12..27 unless score #dialog Dialog matches 17 unless score #dialog Dialog matches 20 unless score #dialog Dialog matches 26 as @a[tag=same_room,tag=!spectator] unless entity @s[tag=dialog_menu,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 20 as @a[tag=same_room,tag=!spectator,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/choice/jarvis
execute if score #dialog Dialog matches 17 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 26 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 28.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"jarvis"}}},tag=same_room,limit=1] remove freeze_animation
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"jarvis"}}},tag=same_room,limit=1] remove no_ai
execute if score #dialog Dialog matches 1 run tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"jarvis"}}},tag=same_room,limit=1] add pop_out
execute if score #dialog Dialog matches 1..25 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/talking_ghosts
execute if score #dialog Dialog matches 1..25 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 11 if data storage luigis_mansion:data current_state.current_data.technical_data{jarvis_spoke:1b} run scoreboard players set #dialog Dialog 17
execute if score #dialog Dialog matches 11 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.1"}]}
execute if score #dialog Dialog matches 11 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.1.more"}]}

execute if score #dialog Dialog matches 13 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.2"}]}
execute if score #dialog Dialog matches 13 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.2.more"}]}

execute if score #dialog Dialog matches 14 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.3"}]}
execute if score #dialog Dialog matches 14 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.3.more"}]}

execute if score #dialog Dialog matches 15 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.4"}]}
execute if score #dialog Dialog matches 15 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.4.more"}]}

execute if score #dialog Dialog matches 16 run scoreboard players set #dialog Dialog 20

execute if score #dialog Dialog matches 17 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.repeat.1"}]}

execute if score #dialog Dialog matches 19 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.repeat.2"}]}
execute if score #dialog Dialog matches 19 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.repeat.2.more"}]}

execute if score #dialog Dialog matches 20 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {jarvis_spoke:1b}

#Branch: Yes
execute if score #dialog Dialog matches 21 if entity @a[tag=same_room,tag=select_dialog_branch_yes,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.yes.1"}]}

execute if score #dialog Dialog matches 22 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.yes.2"}]}
execute if score #dialog Dialog matches 22 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.yes.2.more"}]}

execute if score #dialog Dialog matches 23 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.yes.3"}]}
execute if score #dialog Dialog matches 23 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.yes.3.more"}]}

execute if score #dialog Dialog matches 24 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.yes.4"}]}
execute if score #dialog Dialog matches 24 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.yes.4.more"}]}

execute if score #dialog Dialog matches 25 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.yes.5"}]}

execute if score #dialog Dialog matches 26 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 26 run tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"jarvis"}}},tag=same_room,limit=1] add pop_in
execute if score #dialog Dialog matches 26 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 26 run scoreboard players set #dialog Dialog -1

#Branch: No
execute if score #dialog Dialog matches 27 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/talking_ghosts
execute if score #dialog Dialog matches 27 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 27 if score #players Totals matches 1 if entity @a[tag=same_room,tag=select_dialog_branch_no,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.no.1"}]}
execute if score #dialog Dialog matches 27 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=select_dialog_branch_no,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.no.1.more"}]}

execute if score #dialog Dialog matches 28 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 28 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 28 run tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"jarvis"}}},tag=same_room,limit=1] add kick_players_out
execute if score #dialog Dialog matches 28 run scoreboard players set #dialog Dialog -1
tag @a[tag=same_room] remove select_dialog_branch_yes
tag @a[tag=same_room] remove select_dialog_branch_no