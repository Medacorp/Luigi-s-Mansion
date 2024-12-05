execute if score #dialog Dialog matches 81 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..80 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 81 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 82
execute if score #dialog Dialog matches 81 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 82.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @a[tag=same_room,limit=1] add disable_interact
tag @e[tag=same_room,tag=ghost,limit=1] remove no_ai
tag @e[tag=same_room,tag=ghost,limit=1] remove freeze_animation
execute if score #dialog Dialog matches 1..81 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/lets_play
execute if score #dialog Dialog matches 1..81 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 80 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.chauncey","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.chauncey.play"}]}

execute if score #dialog Dialog matches 82 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {chauncey_spoke:1b}
execute if score #dialog Dialog matches 82 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 82 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 82 run scoreboard players set #dialog Dialog -1