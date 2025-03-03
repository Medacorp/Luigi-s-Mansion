execute unless score #exterior Loaded matches 1 run tag @e[tag=same_room] add abort_dialog_tick
execute unless score #exterior Loaded matches 1 run return 0

scoreboard players add #dialog Dialog 1
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1..259 run scoreboard players set @a[tag=same_room,scores={Jukebox=0}] Music 10000
execute if score #dialog Dialog matches 1 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mansion_rank.header"}]}
execute if score #dialog Dialog matches 1 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mansion_rank.header.more"}]}
execute if score #dialog Dialog matches 240 run function luigis_mansion:dialog/play/mansion_rank/select
execute if score #dialog Dialog matches 240 run function luigis_mansion:dialog/play/mansion_rank/description
execute if score #dialog Dialog matches 280 run function luigis_mansion:dialog/play/mansion_rank/music
execute if score #dialog Dialog matches 300 run function luigis_mansion:dialog/play/mansion_rank/title
#execute if score #dialog Dialog matches 450 run show mansion rank portrait
execute if score #dialog Dialog matches 450 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mansion_rank.the_end"}]}
execute if score #dialog Dialog matches 640 run function luigis_mansion:dialog/play/mansion_rank/total
execute if score #dialog Dialog matches ..870 run scoreboard players set @a[tag=same_room,scores={Jukebox=0,Music=..10}] Music 10
execute if score #dialog Dialog matches 880 run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"3ds_remake",id:"gooigi_results"},progress:0}
execute if score #dialog Dialog matches 880 run scoreboard players set #dialog Dialog -1