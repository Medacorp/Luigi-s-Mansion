execute if score #dialog Dialog matches 393..395 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 372..392 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 369..370 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 349..368 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 369
execute if score #dialog Dialog matches 348..367 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 347 if entity @a[tag=same_room,tag=select_dialog_branch_yes,limit=1] run scoreboard players set #dialog Dialog 372
execute if score #dialog Dialog matches 347 if entity @a[tag=same_room,tag=select_dialog_branch_no,limit=1] run scoreboard players set #dialog Dialog 348
execute if score #dialog Dialog matches 346 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 85..345 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 81..84 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..80 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..346 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 347
execute if score #dialog Dialog matches 348..370 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 371
execute if score #dialog Dialog matches 372..395 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 396
execute if score #dialog Dialog matches 81..395 unless score #dialog Dialog matches 85..345 unless score #dialog Dialog matches 347 unless score #dialog Dialog matches 372..392 as @a[tag=same_room,tag=!spectator] unless entity @s[tag=dialog_menu,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 347 as @a[tag=same_room,tag=!spectator,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/choice/melody_pianissima_composer
execute if score #dialog Dialog matches 85..345 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 372..392 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 396.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"melody_pianissima"}}},tag=same_room,limit=1] remove freeze_animation
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"melody_pianissima"}}},tag=same_room,limit=1] add visible
execute if score #dialog Dialog matches 1..79 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 80 if data storage luigis_mansion:data current_state.current_data.technical_data{melody_pianissima_spoke:1b} run tag @a[tag=same_room,limit=1] add next_dialog_line
execute if score #dialog Dialog matches 80 if data storage luigis_mansion:data current_state.current_data.technical_data{melody_pianissima_spoke:1b} run scoreboard players set #dialog Dialog 83
execute if score #dialog Dialog matches 80..83 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 80 at @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"melody_pianissima"}}},tag=same_room,limit=1] run playsound luigis_mansion:entity.melody_pianissima.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 80 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.1"}]}

execute if score #dialog Dialog matches 82 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.2"}]}

execute if score #dialog Dialog matches 83 run data modify entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"melody_pianissima"}}},tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if score #dialog Dialog matches 83 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {melody_pianissima_spoke:1b}
execute if score #dialog Dialog matches 83 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.3"}]}
execute if score #dialog Dialog matches 83 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.3.more"}]}

execute if score #dialog Dialog matches 84 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 84 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.4"}]}

execute if score #dialog Dialog matches 85 as @a[tag=same_room] run function luigis_mansion:entities/melody_pianissima/stop_conservatory_music
execute if score #dialog Dialog matches 105..347 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/think
execute if score #dialog Dialog matches 105 run data remove entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"melody_pianissima"}}},tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 105 as @a[tag=same_room] run function luigis_mansion:other/music/set/talking_ghost
execute if score #dialog Dialog matches 105 run stopsound @a[tag=same_room] music
execute if score #dialog Dialog matches 105 run playsound luigis_mansion:music.water music @a[tag=same_room] ~ ~ ~ 1000
execute if score #dialog Dialog matches 105 run scoreboard players set @a[tag=same_room] Music 240
execute if score #dialog Dialog matches 345 run data modify entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"melody_pianissima"}}},tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if score #dialog Dialog matches 345 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.composer.1"}]}
execute if score #dialog Dialog matches 345 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.composer.1.more"}]}
#346..347

#Branch: No
execute if score #dialog Dialog matches 348 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/nod
execute if score #dialog Dialog matches 348 run data modify entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"melody_pianissima"}}},tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"rage"}
execute if score #dialog Dialog matches 348 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.no.1"}]}
execute if score #dialog Dialog matches 368..370 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle

execute if score #dialog Dialog matches 369 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.no.2"}]}
execute if score #dialog Dialog matches 369 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.no.2.more"}]}

execute if score #dialog Dialog matches 370 run data modify entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"melody_pianissima"}}},tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if score #dialog Dialog matches 370 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.melody_pianissima.no.3"}]}
execute if score #dialog Dialog matches 370 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.melody_pianissima.no.3.more"}]}

execute if score #dialog Dialog matches 371 run scoreboard players set #conservatory Wave -1
execute if score #dialog Dialog matches 371 run tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"melody_pianissima"}}},tag=same_room,limit=1] add vanish
execute if score #dialog Dialog matches 371 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 371 as @a[tag=same_room] run function luigis_mansion:other/music/set/room
execute if score #dialog Dialog matches 371 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches 371 run scoreboard players set #dialog Dialog -1

#Branch: Yes
execute if score #dialog Dialog matches 372 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/enthusiastic
execute if score #dialog Dialog matches 392..395 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 392 run data modify entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"melody_pianissima"}}},tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"laugh"}
execute if score #dialog Dialog matches 392 at @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"melody_pianissima"}}},tag=same_room,limit=1] run playsound luigis_mansion:entity.melody_pianissima.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 392 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.yes.1"}]}
execute if score #dialog Dialog matches 392 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.yes.1.more"}]}

execute if score #dialog Dialog matches 394 run data modify entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"melody_pianissima"}}},tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if score #dialog Dialog matches 394 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.yes.2"}]}
execute if score #dialog Dialog matches 394 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.yes.2.more"}]}

execute if score #dialog Dialog matches 395 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.yes.3"}]}
execute if score #dialog Dialog matches 395 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.yes.3.more"}]}

execute if score #dialog Dialog matches 396 run data remove entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"melody_pianissima"}}},tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 396 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches 396 run scoreboard players add #conservatory Wave 1
execute if score #dialog Dialog matches 396 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 396 run scoreboard players set #dialog Dialog -1
tag @a[tag=same_room] remove select_dialog_branch_no
tag @a[tag=same_room] remove select_dialog_branch_yes