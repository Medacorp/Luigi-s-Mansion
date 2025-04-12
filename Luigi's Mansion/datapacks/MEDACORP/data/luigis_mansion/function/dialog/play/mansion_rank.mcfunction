execute if score #dialog Dialog matches 1..159 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"795.0 75 2.0 90 -20"}
execute if score #dialog Dialog matches 160..429 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"790.0 90.5 8.0 90 -20"}
execute if score #dialog Dialog matches 430..849 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"787.0 72.4 2 90 0"}

execute unless score #exterior Ticking matches 1 run tag @e[tag=same_room] add abort_dialog_tick
execute unless score #exterior Ticking matches 1 run return 0

scoreboard players add #dialog Dialog 1
tag @e[tag=same_room,tag=player,type=!minecraft:player] add no_ai
tag @e[tag=same_room,tag=player,type=!minecraft:player] add no_ai_dialog
tag @e[tag=same_room,tag=player,type=!minecraft:player] add freeze_animation
tag @e[tag=same_room,tag=player,type=!minecraft:player] add freeze_animation_dialog
tag @e[tag=same_room,tag=player,type=!minecraft:player] add applied_dialog_effects
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1..259 run scoreboard players set @a[tag=same_room,scores={Jukebox=0}] Music 10000
execute if score #dialog Dialog matches 1 at @a[tag=same_room,limit=1] run summon minecraft:text_display ~ ~ ~ {Tags:["mansion_rank_header"],text:{type:"translatable",translate:"luigis_mansion:dialog.mansion_rank.header"},billboard:"center",line_width:173,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:25b}
execute if score #dialog Dialog matches 1 if score #players Totals matches 2.. run data modify entity @e[tag=mansion_rank_header,limit=1] text set value {type:"translatable",translate:"luigis_mansion:dialog.mansion_rank.header.more"}
execute if score #dialog Dialog matches 1..40 store result score #temp Time run data get entity @e[tag=mansion_rank_header,limit=1] text_opacity
execute if score #dialog Dialog matches 1..40 store result entity @e[tag=mansion_rank_header,limit=1] text_opacity byte 1 run scoreboard players add #temp Time 5
execute if score #dialog Dialog matches 1..220 at @a[tag=same_room,limit=1] run teleport @e[tag=mansion_rank_header,limit=1] ^ ^0.75 ^3.5
execute if score #dialog Dialog matches 220 run tag @e[tag=mansion_rank_header,limit=1] add dead
execute if score #dialog Dialog matches 220 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 220 run function luigis_mansion:dialog/play/mansion_rank/select
execute if score #dialog Dialog matches 240 run function luigis_mansion:dialog/play/mansion_rank/description
execute if score #dialog Dialog matches 260 run function luigis_mansion:dialog/play/mansion_rank/music
execute if score #dialog Dialog matches 300 run function luigis_mansion:dialog/play/mansion_rank/title
execute if score #dialog Dialog matches 301..430 store result score #temp Time run data get entity @e[tag=mansion_rank_title,limit=1] text_opacity
execute if score #dialog Dialog matches 301..340 store result entity @e[tag=mansion_rank_title,limit=1] text_opacity byte 1 run scoreboard players add #temp Time 5
execute if score #dialog Dialog matches 401..430 store result entity @e[tag=mansion_rank_title,limit=1] text_opacity byte 1 run scoreboard players remove #temp Time 5
execute if score #dialog Dialog matches 241..420 store result score #temp Time run data get entity @e[tag=mansion_rank_description,limit=1] text_opacity
execute if score #dialog Dialog matches 241..280 store result entity @e[tag=mansion_rank_description,limit=1] text_opacity byte 1 run scoreboard players add #temp Time 5
execute if score #dialog Dialog matches 381..420 store result entity @e[tag=mansion_rank_description,limit=1] text_opacity byte 1 run scoreboard players remove #temp Time 5
execute if score #dialog Dialog matches 430 run tag @e[tag=mansion_rank_title,limit=1] add dead
execute if score #dialog Dialog matches 430 run tag @e[tag=mansion_rank_description,limit=1] add dead
execute if score #dialog Dialog matches 480 at @a[tag=same_room,limit=1] run summon minecraft:text_display 786.1 73.6 2.175 {Tags:["mansion_rank_end"],text:{type:"translatable",translate:"luigis_mansion:dialog.mansion_rank.the_end",color:"red"},billboard:"center",line_width:400,background:0,alignment:"right",brightness:{block:15,sky:0},transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f],text_opacity:25b}
execute if score #dialog Dialog matches 481..700 store result score #temp Time run data get entity @e[tag=mansion_rank_end,limit=1] text_opacity
execute if score #dialog Dialog matches 481..520 store result entity @e[tag=mansion_rank_end,limit=1] text_opacity byte 1 run scoreboard players add #temp Time 5
execute if score #dialog Dialog matches 581..620 store result entity @e[tag=mansion_rank_end,limit=1] text_opacity byte 1 run scoreboard players remove #temp Time 5
execute if score #dialog Dialog matches 661..700 store result entity @e[tag=mansion_rank_end,limit=1] text_opacity byte 1 run scoreboard players add #temp Time 5
execute if score #dialog Dialog matches 660 run function luigis_mansion:dialog/play/mansion_rank/total
execute if score #dialog Dialog matches ..850 run scoreboard players set @a[tag=same_room,scores={Jukebox=0,Music=1..10}] Music 10
execute if score #dialog Dialog matches 860 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 860 run tag @e[tag=mansion_rank_end,limit=1] add dead
execute if score #dialog Dialog matches 860 run function luigis_mansion:dialog/play/mansion_rank/clear_mansion
execute if score #dialog Dialog matches 860 run tag @a add show_credits
execute if score #dialog Dialog matches 860 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 860 as @a[tag=same_room] run function luigis_mansion:room/underground_lab/warp_to
execute if score #dialog Dialog matches 860 run scoreboard players set #dialog Dialog -1
scoreboard players reset #temp Time