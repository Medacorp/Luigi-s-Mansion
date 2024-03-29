execute store result score #temp ID run data get storage luigis_mansion:data dialogs[0].phone_caller
execute as @a[tag=same_room] if score @s ID = #temp ID run tag @s add phone_caller
scoreboard players reset #temp ID

execute if score #dialog Dialog matches 30 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 23..28 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 22 if entity @a[tag=same_room,tag=select_dialog_branch_no,limit=1] run scoreboard players set #dialog Dialog 30
execute if score #dialog Dialog matches 22 if entity @a[tag=same_room,tag=select_dialog_branch_yes,limit=1] run scoreboard players set #dialog Dialog 23
execute if score #dialog Dialog matches 21 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..20 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..21 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 22
execute if score #dialog Dialog matches 23..28 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 29
execute if score #dialog Dialog matches 30 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 31
execute if score #dialog Dialog matches 21..30 unless score #dialog Dialog matches 22 unless score #dialog Dialog matches 29 as @a[tag=same_room,tag=!spectator] unless entity @s[tag=dialog_menu,tag=!dialog_choice_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 22 unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_1:1b} as @a[tag=same_room,tag=dialog_choice_menu] run function luigis_mansion:selection_menu/dialog/choice/toad_5
execute if score #dialog Dialog matches 29 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 31.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

execute if score #dialog Dialog matches 1..28 as @a[tag=same_room,tag=!spectator,tag=!phone_caller] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 1..28 as @a[tag=same_room,tag=!spectator,tag=phone_caller] run function luigis_mansion:entities/player/animation/set/answer_phone
execute if score #dialog Dialog matches 20 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.unknown","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_5.1"}]}

execute if score #dialog Dialog matches 22 if data storage luigis_mansion:data current_state.current_data.technical_data{telephone_1:1b} run scoreboard players set #dialog Dialog 23

#Branch: Yes
execute if score #dialog Dialog matches 23 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.unknown","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_5.yes.1","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 23 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.unknown","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_5.yes.1.more"}]}

execute if score #dialog Dialog matches 24..28 as @a[tag=same_room] run function luigis_mansion:other/music/set/toad
execute if score #dialog Dialog matches 24 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_5.yes.2"}]}

execute if score #dialog Dialog matches 25 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_5.yes.3"}]}

execute if score #dialog Dialog matches 26 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_5.yes.4"}]}
execute if score #dialog Dialog matches 26 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_5.yes.4.more"}]}

execute if score #dialog Dialog matches 27 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_5.yes.5"}]}
execute if score #dialog Dialog matches 27 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_5.yes.5.more"}]}

execute if score #dialog Dialog matches 28 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_5.yes.6"}]}

execute if score #dialog Dialog matches 29 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 29 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {telephone_2:1b}
execute if score #dialog Dialog matches 29 run scoreboard players set #dialog Dialog -1

#Branch: No
execute if score #dialog Dialog matches 30 as @a[tag=same_room,tag=!spectator,tag=!phone_caller] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 30 as @a[tag=same_room,tag=!spectator,tag=phone_caller] run function luigis_mansion:entities/player/animation/set/answer_phone
execute if score #dialog Dialog matches 30 run advancement grant @a[tag=same_room] only luigis_mansion:vanilla/go_help_yourself telephone_room
execute if score #dialog Dialog matches 30 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.unknown","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_5.no.1"}]}

execute if score #dialog Dialog matches 31 run scoreboard players set #dialog Dialog -1

execute if score #dialog Dialog matches -1 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches -1 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {telephone_1:1b}
tag @a[tag=same_room] remove select_dialog_branch_yes
tag @a[tag=same_room] remove select_dialog_branch_no
tag @a[tag=same_room] remove phone_caller