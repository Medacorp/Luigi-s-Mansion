execute if score #dialog Dialog matches 2..3 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..3 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 4
execute if score #dialog Dialog matches 2 as @a[tag=same_room,tag=!spectator] unless entity @s[tag=dialog_menu,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 3 as @a[tag=same_room,tag=!spectator,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/choice/save
execute if score #dialog Dialog matches 4.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=toad,tag=same_room,limit=1] remove freeze_animation
tag @e[tag=toad,tag=same_room,limit=1] remove no_ai
execute if score #dialog Dialog matches 1..3 as @a[tag=same_room] run function luigis_mansion:other/music/set/toad
execute if score #dialog Dialog matches 1..3 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 1 run data modify entity @e[tag=toad,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"explain"}
execute if score #dialog Dialog matches 1 unless data storage luigis_mansion:data current_state.current_data.technical_data{released_boos:1b} if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.repeat"}]}
execute if score #dialog Dialog matches 1 unless data storage luigis_mansion:data current_state.current_data.technical_data{released_boos:1b} if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.repeat.more"}]}
execute if score #dialog Dialog matches 1 unless data storage luigis_mansion:data current_state.current_data.rooms.breaker_room{cleared:1b} if data storage luigis_mansion:data current_state.current_data.technical_data{released_boos:1b} if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.repeat.boos","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 1 unless data storage luigis_mansion:data current_state.current_data.rooms.breaker_room{cleared:1b} if data storage luigis_mansion:data current_state.current_data.technical_data{released_boos:1b} if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.repeat.boos.more"}]}
execute if score #dialog Dialog matches 1 if data storage luigis_mansion:data current_state.current_data.rooms.breaker_room{cleared:1b} run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.repeat.blackout"}]}

execute if score #dialog Dialog matches 3..4 run data remove entity @e[tag=toad,tag=same_room,limit=1] data.animation

execute if score #dialog Dialog matches 4 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 4 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 4 run scoreboard players set #dialog Dialog -1