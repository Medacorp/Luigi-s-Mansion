execute if score #dialog Dialog matches 1..21 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 22
execute if score #dialog Dialog matches ..20 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..21 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 22
execute if score #dialog Dialog matches ..21 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 22.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=e_gadd,tag=same_room,limit=1] remove freeze_animation
tag @e[tag=gooigi,tag=same_room,limit=1] remove freeze_animation
execute if score #dialog Dialog matches 1 unless data storage luigis_mansion:data current_state.current_data.mansion_id{namespace:"luigis_mansion",id:"normal"} if entity @a[scores={Room=1..},tag=!spectator,limit=1] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"go_to_mansion/failure"},progress:0,room:-1}
execute if score #dialog Dialog matches 1 unless data storage luigis_mansion:data current_state.current_data.mansion_id{namespace:"luigis_mansion",id:"normal"} if entity @a[scores={Room=1..},tag=!spectator,limit=1] run scoreboard players set #dialog Dialog -1

execute if score #dialog Dialog matches 1 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/nod
execute if score #dialog Dialog matches 1 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.underground_lab.mansion.1","with":[{"type":"selector","selector":"@a[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 1 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.underground_lab.mansion.1.more"}]}
execute if score #dialog Dialog matches 1 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.oui_oomahkah neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 21 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle

execute if score #dialog Dialog matches 22 as @a[tag=same_room] run function luigis_mansion:room/normal/load
execute if score #dialog Dialog matches 22 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 22 run scoreboard players set #dialog Dialog -1