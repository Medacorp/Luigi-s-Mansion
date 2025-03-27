execute unless score #exterior Loaded matches 1 run tag @e[tag=same_room] add abort_dialog_tick
execute unless score #exterior Loaded matches 1 run return 0

scoreboard players add #dialog Dialog 1
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1..259 run scoreboard players set @a[tag=same_room,scores={Jukebox=0}] Music 10000
execute if score #dialog Dialog matches 1 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.mansion_rank.header"}]}
execute if score #dialog Dialog matches 1 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.mansion_rank.header.more"}]}
#execute if score #dialog Dialog matches 160.. run 790.0 90.5 8.0 90 -20
execute if score #dialog Dialog matches 220 run function luigis_mansion:dialog/play/mansion_rank/select
execute if score #dialog Dialog matches 240 run function luigis_mansion:dialog/play/mansion_rank/description
execute if score #dialog Dialog matches 260 run function luigis_mansion:dialog/play/mansion_rank/music
execute if score #dialog Dialog matches 300 run function luigis_mansion:dialog/play/mansion_rank/title
#execute if score #dialog Dialog matches 430 run show mansion rank portrait
execute if score #dialog Dialog matches 480 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.mansion_rank.the_end"}]}
execute if score #dialog Dialog matches 660 run function luigis_mansion:dialog/play/mansion_rank/total
execute if score #dialog Dialog matches ..850 run scoreboard players set @a[tag=same_room,scores={Jukebox=0,Music=..10}] Music 10
execute if score #dialog Dialog matches 860 run function luigis_mansion:dialog/play/mansion_rank/clear_mansion
execute if score #dialog Dialog matches 860 run tag @a add show_credits
execute if score #dialog Dialog matches 860 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 860 as @a[tag=same_room] run function luigis_mansion:other/music/set/credits
execute if score #dialog Dialog matches 860 run tag @e[tag=e_gadd,tag=same_room,limit=1] add can_talk_to
execute if score #dialog Dialog matches 860 run tag @e[tag=e_gadd,tag=same_room,limit=1] remove cannot_be_removed
execute if score #dialog Dialog matches 860 run scoreboard players set #dialog Dialog -1