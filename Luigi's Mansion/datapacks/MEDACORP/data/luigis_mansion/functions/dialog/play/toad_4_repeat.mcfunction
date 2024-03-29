execute if score #dialog Dialog matches 50 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 30..49 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 50
execute if score #dialog Dialog matches 29..48 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 25..27 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 4..24 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 25
execute if score #dialog Dialog matches 4..23 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=select_dialog_branch_no,limit=1] run scoreboard players set #dialog Dialog 29
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=select_dialog_branch_yes,limit=1] run scoreboard players set #dialog Dialog 4
execute if score #dialog Dialog matches 2 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..50 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 51
execute if score #dialog Dialog matches ..49 unless score #dialog Dialog matches 28 as @a[tag=same_room,tag=!spectator] unless entity @s[tag=dialog_menu,tag=!dialog_choice_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 28 as @a[tag=same_room,tag=!spectator,tag=!dialog_choice_menu] run function luigis_mansion:selection_menu/dialog/choice/toad_4_repeat
execute if score #dialog Dialog matches 50 as @a[tag=same_room,tag=!spectator,tag=!dialog_choice_menu] run function luigis_mansion:selection_menu/dialog/choice/save
execute if score #dialog Dialog matches 51.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

tag @e[tag=toad,tag=same_room,limit=1] remove freeze_animation
tag @e[tag=toad,tag=same_room,limit=1] remove no_ai
execute if score #dialog Dialog matches 1..3 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 1.. as @a[tag=same_room] run function luigis_mansion:other/music/set/toad
execute if score #dialog Dialog matches 1 run data modify entity @e[tag=toad,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"explain"}
execute if score #dialog Dialog matches 1 unless data storage luigis_mansion:data current_state.current_data.rooms.fortune_tellers_room{cleared:1b} run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_4.repeat.1"}]}
execute if score #dialog Dialog matches 1 if data storage luigis_mansion:data current_state.current_data.rooms.fortune_tellers_room{cleared:1b} run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_4.repeat.1.alt"}]}

execute if score #dialog Dialog matches 3 if data storage luigis_mansion:data current_state.current_data.rooms.fortune_tellers_room{cleared:1b} run scoreboard players set #dialog Dialog 50
execute if score #dialog Dialog matches 3 run data remove entity @e[tag=toad,tag=same_room,limit=1] data.animation

#Branch: Yes
execute if score #dialog Dialog matches 4 run data modify entity @e[tag=toad,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"explain"}
execute if score #dialog Dialog matches 4 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/nod
execute if score #dialog Dialog matches 4 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_4.repeat.yes.1"}]}
execute if score #dialog Dialog matches 24..28 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle

execute if score #dialog Dialog matches 25 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_4.repeat.yes.2"}]}
execute if score #dialog Dialog matches 25 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_4.repeat.yes.2.more"}]}

execute if score #dialog Dialog matches 26 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_4.repeat.yes.3"}]}
execute if score #dialog Dialog matches 26 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_4.repeat.yes.3.more"}]}

execute if score #dialog Dialog matches 27 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_4.repeat.yes.4"}]}

execute if score #dialog Dialog matches 28 run scoreboard players set #dialog Dialog 50

#Branch: No
execute if score #dialog Dialog matches 29 run data modify entity @e[tag=toad,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"explain"}
execute if score #dialog Dialog matches 29 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/nod
execute if score #dialog Dialog matches 29 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_4.repeat.no.1"}]}
execute if score #dialog Dialog matches 29 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_4.repeat.no.1.more"}]}
execute if score #dialog Dialog matches 49.. as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle

execute if score #dialog Dialog matches 50..51 run data remove entity @e[tag=toad,tag=same_room,limit=1] data.animation

execute if score #dialog Dialog matches 51 run scoreboard players set #dialog Dialog -1

execute if score #dialog Dialog matches -1 as @a[tag=same_room,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches -1 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
tag @a[tag=same_room] remove select_dialog_branch_yes
tag @a[tag=same_room] remove select_dialog_branch_no