execute unless score #dialog Dialog matches 880 unless score #exterior Ticking matches 1 run tag @e[tag=same_room] add abort_dialog_tick
execute unless score #dialog Dialog matches 880 unless score #exterior Ticking matches 1 run return 0

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
execute if score #dialog Dialog matches 1..179 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"795.0 75 2.0 90 0"}
execute if score #dialog Dialog matches 180..449 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"795.5 106.5 8.0 90 0"}
execute if score #dialog Dialog matches 1..40 store result score #temp Time run data get entity @e[tag=mansion_rank_header,limit=1] text_opacity
execute if score #dialog Dialog matches 1..40 store result entity @e[tag=mansion_rank_header,limit=1] text_opacity byte 1 run scoreboard players add #temp Time 5
execute if score #dialog Dialog matches 1..240 at @a[tag=same_room,limit=1] run teleport @e[tag=mansion_rank_header,limit=1] ^ ^0.75 ^3.5
execute if score #dialog Dialog matches 240 run tag @e[tag=mansion_rank_header,limit=1] add dead
execute if score #dialog Dialog matches 240 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 240 run function luigis_mansion:dialog/play/mansion_rank/select
execute if score #dialog Dialog matches 241 run function luigis_mansion:dialog/play/mansion_rank/description
execute if score #dialog Dialog matches 280 run function luigis_mansion:dialog/play/mansion_rank/music
execute if score #dialog Dialog matches 300 run function luigis_mansion:dialog/play/mansion_rank/title
execute if score #dialog Dialog matches 301..400 store result score #temp Time run data get entity @e[tag=mansion_rank_title,limit=1] text_opacity
execute if score #dialog Dialog matches 301..340 store result entity @e[tag=mansion_rank_title,limit=1] text_opacity byte 1 run scoreboard players add #temp Time 5
execute if score #dialog Dialog matches 361..400 store result entity @e[tag=mansion_rank_title,limit=1] text_opacity byte 1 run scoreboard players remove #temp Time 5
execute if score #dialog Dialog matches 361..400 store result score #temp Time run data get entity @e[tag=mansion_rank_description,limit=1] text_opacity
execute if score #dialog Dialog matches 361..400 store result entity @e[tag=mansion_rank_description,limit=1] text_opacity byte 1 run scoreboard players remove #temp Time 5
execute if score #dialog Dialog matches 400 run tag @e[tag=mansion_rank_title,limit=1] add dead
execute if score #dialog Dialog matches 400 run tag @e[tag=mansion_rank_description,limit=1] add dead
execute if score #dialog Dialog matches 450..879 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"787.5 72.4 2 90 0"}
execute if score #dialog Dialog matches 450 at @a[tag=same_room,limit=1] run summon minecraft:text_display 786.1 73.3 1.7 {Tags:["mansion_rank_end"],text:{type:"translatable",translate:"luigis_mansion:dialog.mansion_rank.the_end",color:"red"},billboard:"center",line_width:400,background:0,alignment:"right",brightness:{block:15,sky:0},transformation:[0.75f,0f,0f,0f,0f,0.75f,0f,0f,0f,0f,0.75f,0f,0f,0f,0f,1f],text_opacity:-1b}
execute if score #dialog Dialog matches 601..680 store result score #temp Time run data get entity @e[tag=mansion_rank_end,limit=1] text_opacity
execute if score #dialog Dialog matches 601..640 store result entity @e[tag=mansion_rank_end,limit=1] text_opacity byte 1 run scoreboard players remove #temp Time 5
execute if score #dialog Dialog matches 641..680 store result entity @e[tag=mansion_rank_end,limit=1] text_opacity byte 1 run scoreboard players add #temp Time 5
execute if score #dialog Dialog matches 640 run function luigis_mansion:dialog/play/mansion_rank/total
execute if score #dialog Dialog matches ..870 run scoreboard players set @a[tag=same_room,scores={Jukebox=0,Music=1..10}] Music 10
execute if score #dialog Dialog matches 880 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 880 run tag @e[tag=mansion_rank_end,limit=1] add dead
execute if score #dialog Dialog matches 880 as @a[tag=same_room] run function luigis_mansion:room/underground_lab/warp_to
execute if score #dialog Dialog matches 880 run data modify storage luigis_mansion:data dialogs[0].room set value -1
execute if score #dialog Dialog matches 881 run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"3ds_remake",id:"gooigi_results"},progress:0,room:1}
execute if score #dialog Dialog matches 881 run scoreboard players set #dialog Dialog -1
scoreboard players reset #temp Time