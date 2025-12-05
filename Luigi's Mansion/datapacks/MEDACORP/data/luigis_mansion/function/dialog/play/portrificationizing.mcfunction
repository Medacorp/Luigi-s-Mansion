execute if score #dialog Dialog matches 667..668 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 665..666 unless entity @e[tag=portrificationizing_ghost,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..664 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..664 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 664
execute if score #dialog Dialog matches 666..668 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 669
execute if score #dialog Dialog matches 667..668 unless score #dialog Dialog matches 669..750 as @a[tag=same_room,tag=!spectator] unless entity @s[tag=dialog_menu,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 669 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

execute store result score #temp ID run data get storage luigis_mansion:data dialogs[0].caller
execute as @e[tag=luigi,tag=same_room] if score @s ID = #temp ID run tag @s add calls_portrificationizing
scoreboard players reset #temp ID

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=e_gadd,tag=same_room,limit=1] remove freeze_animation
tag @e[tag=e_gadd,tag=same_room,limit=1] remove no_ai
tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"portrificationizing_ghost"}}}] remove no_ai
execute if score #dialog Dialog matches 1 as @e[tag=calls_portrificationizing,limit=1] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.enthusiastic.high_health",medium:"luigis_mansion:entity.player.enthusiastic.high_health",low:"luigis_mansion:entity.player.enthusiastic.low_health",duration:20}
execute if score #dialog Dialog matches 1 unless data storage luigis_mansion:data dialogs[0].portraits run data modify storage luigis_mansion:data dialogs[0].portraits set value {}
execute if score #dialog Dialog matches 1 as @a[tag=same_room] run function luigis_mansion:other/music/set/portrificationizing
execute if score #dialog Dialog matches 1 run function luigis_mansion:spawn_entities/portrificationizing_ghosts with storage luigis_mansion:data current_state.current_data.mansion_id
execute if score #dialog Dialog matches 1 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ facing 771 77 15
execute if score #dialog Dialog matches 101 as @e[tag=calls_portrificationizing,limit=1] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.pull.high_health",medium:"luigis_mansion:entity.player.pull.high_health",low:"luigis_mansion:entity.player.pull.low_health",duration:20}
execute if score #dialog Dialog matches 201 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"jump"}
execute if score #dialog Dialog matches 280 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 300 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"walk_look_sideways"}
execute if score #dialog Dialog matches 310 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"run"}
execute if score #dialog Dialog matches 300..309 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~-0.1 -180 0
execute if score #dialog Dialog matches 310..335 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~-0.248 -180 0
execute if score #dialog Dialog matches 335 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 336..359 as @e[tag=e_gadd,tag=same_room,limit=1] at @s facing entity @e[tag=portrificationizing_ghost,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if score #dialog Dialog matches 360 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"run"}
execute if score #dialog Dialog matches 360..395 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~-0.115 -180 0
execute if score #dialog Dialog matches 395 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 396..439 as @e[tag=e_gadd,tag=same_room,limit=1] at @s facing entity @e[tag=portrificationizing_ghost,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if score #dialog Dialog matches 440 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"run"}
execute if score #dialog Dialog matches 440..475 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~-0.171 -180 0
execute if score #dialog Dialog matches 475 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 476..519 as @e[tag=e_gadd,tag=same_room,limit=1] at @s facing entity @e[tag=portrificationizing_ghost,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if score #dialog Dialog matches 520 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"run"}
execute if score #dialog Dialog matches 520..555 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~-0.228 -180 0
execute if score #dialog Dialog matches 555 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 556..809 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ facing 770 77 -12
execute if score #dialog Dialog matches 360 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.1"}]}
execute if score #dialog Dialog matches 360 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.seedapee_ohyah neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 440 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.2"}]}
execute if score #dialog Dialog matches 440 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.keeyehroo_suu neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 520 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.3"}]}
execute if score #dialog Dialog matches 520 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.hoo_hoo_hoo neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 560 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.show_item.high_health",medium:"luigis_mansion:entity.player.show_item.high_health",low:"luigis_mansion:entity.player.show_item.low_health",duration:20}
execute if score #dialog Dialog matches 600 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.4"}]}
execute if score #dialog Dialog matches 600 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.keekehrookukukay neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 666 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.5"}]}
execute if score #dialog Dialog matches 666 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.jeemee_jeemee neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 668 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.jeemee_jeemee
execute if score #dialog Dialog matches 668 if entity @e[tag=e_gadd,tag=same_room,limit=1,tag=can_talk_to] if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.6",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 668 if entity @e[tag=e_gadd,tag=same_room,limit=1,tag=can_talk_to] if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.6.more"}]}
execute if score #dialog Dialog matches 668 if entity @e[tag=e_gadd,tag=same_room,limit=1,tag=can_talk_to] if entity @a[tag=same_room,tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.ooh_ooh_yahboh_yahboh_hoo_hoo_hoo neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 668 if entity @e[tag=e_gadd,tag=same_room,limit=1,tag=!can_talk_to] if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.ghost_portrificationizer_room.ending.5"}]}
execute if score #dialog Dialog matches 668 if entity @e[tag=e_gadd,tag=same_room,limit=1,tag=!can_talk_to] if entity @a[tag=same_room,tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.ohmoogah_luigi_odoh neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 669 run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"score_results"},room:-3,progress:0}
execute if score #dialog Dialog matches 669 if entity @e[tag=e_gadd,tag=same_room,limit=1,tag=!can_talk_to] run data modify storage luigis_mansion:data dialogs[-1].ending set from storage luigis_mansion:data current_state.current_data.ending_dialog
execute if score #dialog Dialog matches 669 run data modify storage luigis_mansion:data dialogs[-1].portraits set from storage luigis_mansion:data dialogs[0].portraits
execute if score #dialog Dialog matches 669 run scoreboard players set #dialog Dialog -1
tag @e[tag=luigi,tag=same_room] remove calls_portrificationizing