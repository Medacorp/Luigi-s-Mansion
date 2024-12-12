execute if score #dialog Dialog matches 78..97 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 98
execute if score #dialog Dialog matches 77..96 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 73..75 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 51..72 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 50 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 29..49 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 28 if entity @a[tag=same_room,tag=select_dialog_branch_no,limit=1] run scoreboard players set #dialog Dialog 77
execute if score #dialog Dialog matches 28 if entity @a[tag=same_room,tag=select_dialog_branch_yes,limit=1] run scoreboard players set #dialog Dialog 29
execute if score #dialog Dialog matches 25..27 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 5..24 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 25
execute if score #dialog Dialog matches 4..23 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 2..3 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..27 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 28
execute if score #dialog Dialog matches 29..75 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 76
execute if score #dialog Dialog matches 97 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 98
execute if score #dialog Dialog matches ..97 unless score #dialog Dialog matches 28..49 unless score #dialog Dialog matches 51..71 unless score #dialog Dialog matches 74 unless score #dialog Dialog matches 76 as @a[tag=same_room,tag=!spectator] unless entity @s[tag=dialog_menu,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 28 as @a[tag=same_room,tag=!spectator,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/choice/toad_1
execute if score #dialog Dialog matches 74 as @a[tag=same_room,tag=!spectator,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/choice/save
execute if score #dialog Dialog matches 29..49 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 51..71 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 76 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 98.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=toad,tag=same_room,limit=1] remove freeze_animation
tag @e[tag=toad,tag=same_room,limit=1] remove no_ai
execute if score #dialog Dialog matches 1 if data storage luigis_mansion:data current_state.current_data.technical_data{toad_1_spoke:1b} run tag @a[tag=same_room,limit=1] add next_dialog_line
execute if score #dialog Dialog matches 1 if data storage luigis_mansion:data current_state.current_data.technical_data{toad_1_spoke:1b} run scoreboard players set #dialog Dialog 27
execute if score #dialog Dialog matches 1.. as @a[tag=same_room] run function luigis_mansion:other/music/set/toad
execute if score #dialog Dialog matches 1..4 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 1 at @e[tag=toad,tag=same_room,limit=1] run playsound luigis_mansion:entity.toad.cry_0 neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.1"}]}

execute if score #dialog Dialog matches 3 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.2","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 3 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.2.more"}]}

execute if score #dialog Dialog matches 4 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/nod
execute if score #dialog Dialog matches 4 run data remove entity @e[tag=toad,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 4 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.toad.cry_0
execute if score #dialog Dialog matches 4 at @e[tag=toad,tag=same_room,limit=1] run playsound luigis_mansion:entity.toad.wow neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 4 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.3","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 4 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.3.more"}]}
execute if score #dialog Dialog matches 24..27 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust

execute if score #dialog Dialog matches 25 run data modify entity @e[tag=toad,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"explain"}
execute if score #dialog Dialog matches 25 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.4"}]}
execute if score #dialog Dialog matches 25 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.4.more"}]}

execute if score #dialog Dialog matches 26 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.5"}]}

execute if score #dialog Dialog matches 27 run data modify entity @e[tag=toad,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"cry"}
execute if score #dialog Dialog matches 27 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {toad_1_spoke:1b}
execute if score #dialog Dialog matches 27 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.toad.wow
execute if score #dialog Dialog matches 27 if entity @a[tag=next_dialog_line,limit=1] at @e[tag=toad,tag=same_room,limit=1] run playsound luigis_mansion:entity.toad.cry_1 neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 27 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.6"}]}
execute if score #dialog Dialog matches 27 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.6.more"}]}

execute if score #dialog Dialog matches 28 run data modify entity @e[tag=toad,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"cry"}
execute if score #dialog Dialog matches 28 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/think

#Branch: Yes
execute if score #dialog Dialog matches 29 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/enthusiastic
execute if score #dialog Dialog matches 29 run data remove entity @e[tag=toad,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 29 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.toad.cry_1
execute if score #dialog Dialog matches 29 at @e[tag=toad,tag=same_room,limit=1] run playsound luigis_mansion:entity.toad.yahoo neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 49 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 49 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.yes.1","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 49 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.yes.1.more"}]}

execute if score #dialog Dialog matches 51 run scoreboard players set #temp Room 1
execute if score #dialog Dialog matches 51 as @e[tag=toad,tag=same_room,limit=1] run function luigis_mansion:room/clear_room_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
execute if score #dialog Dialog matches 51 run scoreboard players set #temp Room 2
execute if score #dialog Dialog matches 51 as @e[tag=toad,tag=same_room,limit=1] run function luigis_mansion:room/clear_room_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
execute if score #dialog Dialog matches 72 run data modify entity @e[tag=toad,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"explain"}
execute if score #dialog Dialog matches 72 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.yes.2"}]}
execute if score #dialog Dialog matches 72 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.yes.2.more"}]}

execute if score #dialog Dialog matches 74..76 run data remove entity @e[tag=toad,tag=same_room,limit=1] data.animation

execute if score #dialog Dialog matches 75 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.yes.3"}]}
execute if score #dialog Dialog matches 75 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.yes.3.more"}]}

execute if score #dialog Dialog matches 76 run scoreboard players set #dialog Dialog -1

#Branch: No
execute if score #dialog Dialog matches 77 run advancement grant @a[tag=same_room] only luigis_mansion:vanilla/go_help_yourself foyer
execute if score #dialog Dialog matches 77 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/nod
execute if score #dialog Dialog matches 77 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.toad.cry_1
execute if score #dialog Dialog matches 77 at @e[tag=toad,tag=same_room,limit=1] run playsound luigis_mansion:entity.toad.mama_mia neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 77 if entity @a[tag=select_dialog_branch_no,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.no.1"}]}
execute if score #dialog Dialog matches 97 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust

execute if score #dialog Dialog matches 98 run data modify entity @e[tag=toad,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"cry"}
execute if score #dialog Dialog matches 98 run scoreboard players set #dialog Dialog -1

execute if score #dialog Dialog matches -1 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches -1 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
tag @a[tag=same_room] remove select_dialog_branch_yes
tag @a[tag=same_room] remove select_dialog_branch_no