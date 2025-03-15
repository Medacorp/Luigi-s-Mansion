execute if score #dialog Dialog matches 59..61 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 56..57 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 14..55 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 12..13 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..11 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..53 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 54
execute if score #dialog Dialog matches 56..57 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 58
execute if score #dialog Dialog matches 59..61 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 62
execute if score #dialog Dialog matches 12..61 unless score #dialog Dialog matches 14..54 unless score #dialog Dialog matches 58 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 14..54 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 58 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 62.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"jarvis"}}},tag=same_room,limit=1] remove freeze_animation
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"jarvis"}}},tag=same_room,limit=1] remove no_ai
execute if score #dialog Dialog matches 1 run tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"jarvis"}}},tag=same_room,limit=1] add pop_out
execute if score #dialog Dialog matches 1..57 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 11 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.game.1"}]}
execute if score #dialog Dialog matches 11 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.game.1.more"}]}

execute if score #dialog Dialog matches 13 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.game.2"}]}

execute if score #dialog Dialog matches 14 run tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"jarvis"}}},tag=same_room,limit=1] add pop_in
execute if score #dialog Dialog matches 54 run tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"jarvis"}}},tag=same_room,limit=1] add pop_out
execute if score #dialog Dialog matches 55..57 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/talking_ghosts
execute if score #dialog Dialog matches 55 store result score #temp Time run data get storage luigis_mansion:data dialogs[0].result
execute if score #dialog Dialog matches 55 if score #temp Time matches 0 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.game.3.0"}]}
execute if score #dialog Dialog matches 55 if score #temp Time matches 0 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.game.3.0.more"}]}
execute if score #dialog Dialog matches 55 if score #temp Time matches 1 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.game.3.1"}]}
execute if score #dialog Dialog matches 55 if score #temp Time matches 1 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.game.3.1.more"}]}
execute if score #dialog Dialog matches 55 if score #temp Time matches 2 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.game.3.2"}]}
execute if score #dialog Dialog matches 55 if score #temp Time matches 2 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.game.3.2.more"}]}
execute if score #dialog Dialog matches 55 if score #temp Time matches 3 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.game.3.3"}]}
execute if score #dialog Dialog matches 55 if score #temp Time matches 3 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.game.3.3.more"}]}
execute if score #dialog Dialog matches 55 if score #temp Time matches 4 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.game.3.4"}]}
execute if score #dialog Dialog matches 55 if score #temp Time matches 4 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.game.3.4.more"}]}
execute if score #dialog Dialog matches 55 if score #temp Time matches 5 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.game.3.5"}]}
execute if score #dialog Dialog matches 55 if score #temp Time matches 5 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.game.3.5.more"}]}
execute if score #dialog Dialog matches 55 if score #temp Time matches 6 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.game.3.6"}]}
execute if score #dialog Dialog matches 55 if score #temp Time matches 6 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.game.3.6.more"}]}
execute if score #dialog Dialog matches 55 if score #temp Time matches 7 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.game.3.7"}]}
execute if score #dialog Dialog matches 55 if score #temp Time matches 7 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.game.3.7.more"}]}
execute if score #dialog Dialog matches 55 if score #temp Time matches 7 run scoreboard players set #dialog Dialog 59
execute if score #dialog Dialog matches 55 run scoreboard players reset #temp Time

#Branch: Lost
execute if score #dialog Dialog matches 57 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.game.no.1"}]}
execute if score #dialog Dialog matches 57 if score #players Totals matches 2..3 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.game.no.1.more"}]}
execute if score #dialog Dialog matches 57 if score #players Totals matches 4.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.game.no.1.even_more"}]}

execute if score #dialog Dialog matches 58 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 58 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 58 run tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"jarvis"}}},tag=same_room,limit=1] add kick_players_out
execute if score #dialog Dialog matches 58 run scoreboard players set #dialog Dialog -1

#Branch: Won
execute if score #dialog Dialog matches 59..61 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/talking_ghosts
execute if score #dialog Dialog matches 59..61 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 59 run scoreboard players reset #temp Time

execute if score #dialog Dialog matches 60 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.game.yes.1"}]}
execute if score #dialog Dialog matches 60 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.game.yes.1.more"}]}

execute if score #dialog Dialog matches 61 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.game.yes.2"}]}
execute if score #dialog Dialog matches 61 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.jarvis",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.jarvis.game.yes.2.more"}]}

execute if score #dialog Dialog matches 62 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 62 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 62 run scoreboard players set #dialog Dialog -1