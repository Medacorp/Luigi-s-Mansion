execute if score #dialog Dialog matches 68..88 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 89
execute if score #dialog Dialog matches 27..87 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 25..26 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 4..24 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=select_dialog_branch_no,limit=1] run scoreboard players set #dialog Dialog 68
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=select_dialog_branch_yes,limit=1] run scoreboard players set #dialog Dialog 4
execute if score #dialog Dialog matches 2 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..2 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 3
execute if score #dialog Dialog matches 4..66 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 67
execute if score #dialog Dialog matches 88.. if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 89
execute if score #dialog Dialog matches ..88 unless score #dialog Dialog matches 3..23 unless score #dialog Dialog matches 27..67 as @a[tag=same_room,tag=!spectator] unless entity @s[tag=dialog_menu,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 3 as @a[tag=same_room,tag=!spectator,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/choice/toad_3
execute if score #dialog Dialog matches 4..23 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 27..67 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 89.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=toad,tag=same_room,limit=1] remove freeze_animation
tag @e[tag=toad,tag=same_room,limit=1] remove no_ai
execute if score #dialog Dialog matches 1.. as @a[tag=same_room] run function luigis_mansion:other/music/set/toad
execute if score #dialog Dialog matches 1..3 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 1 at @e[tag=toad,tag=same_room,limit=1] run playsound luigis_mansion:entity.toad.cry_0 neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_3.1"}]}

execute if score #dialog Dialog matches 3 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/think

#Branch: Yes
execute if score #dialog Dialog matches 4 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/enthusiastic
execute if score #dialog Dialog matches 4..47 run data remove entity @e[tag=toad,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 29 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.toad.cry_0
execute if score #dialog Dialog matches 4 at @e[tag=toad,tag=same_room,limit=1] run playsound luigis_mansion:entity.toad.wow neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 24..46 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 24 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_3.yes.1","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 24 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_3.yes.1.more"}]}

execute if score #dialog Dialog matches 26 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_3.yes.2"}]}
execute if score #dialog Dialog matches 26 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_3.yes.2.more"}]}

execute if score #dialog Dialog matches 27 run scoreboard players set #temp Room 19
execute if score #dialog Dialog matches 27 as @e[tag=toad,tag=same_room,limit=1] run function luigis_mansion:room/clear_room_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
execute if score #dialog Dialog matches 67 run scoreboard players set #dialog Dialog -1

#Branch: No
execute if score #dialog Dialog matches 68 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/nod
execute if score #dialog Dialog matches 68 run advancement grant @a[tag=same_room] only luigis_mansion:vanilla/go_help_yourself washroom_1
execute if score #dialog Dialog matches 68 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_3.no.1"}]}
execute if score #dialog Dialog matches 88 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle

execute if score #dialog Dialog matches 89 run scoreboard players set #dialog Dialog -1

execute if score #dialog Dialog matches -1 as @a[tag=same_room] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches -1 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
tag @a[tag=same_room] remove select_dialog_branch_yes
tag @a[tag=same_room] remove select_dialog_branch_no