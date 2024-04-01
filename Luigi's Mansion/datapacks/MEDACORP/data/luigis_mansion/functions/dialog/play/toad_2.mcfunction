execute if score #dialog Dialog matches 27..46 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 26 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 5..25 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 2..4 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..46 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 47
execute if score #dialog Dialog matches ..26 unless score #dialog Dialog matches 5..25 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 27.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=toad,tag=same_room,limit=1] remove freeze_animation
tag @e[tag=toad,tag=same_room,limit=1] remove no_ai
execute if score #dialog Dialog matches 1..26 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 1..46 as @a[tag=same_room] run function luigis_mansion:other/music/set/toad
execute if score #dialog Dialog matches 1 at @e[tag=toad,tag=same_room,limit=1] run playsound luigis_mansion:entity.toad.cry_0 neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_2.1"}]}

execute if score #dialog Dialog matches 3 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_2.2","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 3 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_2.2.more"}]}

execute if score #dialog Dialog matches 4 run data remove entity @e[tag=toad,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 4 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.toad.cry_0
execute if score #dialog Dialog matches 4 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] at @e[tag=toad,tag=same_room,limit=1] run playsound luigis_mansion:entity.toad.wow neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 4 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_2.3","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 4 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_2.3.more"}]}

execute if score #dialog Dialog matches 5 run scoreboard players set #temp Room 6
execute if score #dialog Dialog matches 5 run function luigis_mansion:room/clear_room_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
execute if score #dialog Dialog matches 25 run data modify entity @e[tag=toad,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"explain"}
execute if score #dialog Dialog matches 25 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_2.4"}]}

execute if score #dialog Dialog matches 27 run data remove entity @e[tag=toad,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 27 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/enthusiastic

execute if score #dialog Dialog matches 47 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches 47 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 47 run data remove entity @e[tag=toad,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 47 run scoreboard players set #dialog Dialog -1