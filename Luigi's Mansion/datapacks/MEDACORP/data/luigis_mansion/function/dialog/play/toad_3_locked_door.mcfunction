execute if score #dialog Dialog matches 2..3 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 4
execute if score #dialog Dialog matches 2..3 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 3 unless data storage luigis_mansion:data current_state.current_data.technical_data{released_boos:1b} as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 4.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1..3 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.unknown","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.washroom_toad.1"}]}

execute if score #dialog Dialog matches 3 unless data storage luigis_mansion:data current_state.current_data.technical_data{released_boos:1b} run scoreboard players set #dialog Dialog -1
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.unknown","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.washroom_toad.2"}]}

execute if score #dialog Dialog matches 4 run scoreboard players set #dialog Dialog -1

execute if score #dialog Dialog matches -1 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
