execute store result score #temp ID run data get storage luigis_mansion:data dialogs[0].scanning_player
execute as @e[tag=player] if score @s ID = #temp ID run tag @s add scanning_player
scoreboard players reset #temp ID

execute if score #dialog Dialog matches 2 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 3
execute if score #dialog Dialog matches 2 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 3.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu,tag=!scanning_player] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1..2 as @e[tag=luigi,tag=!scanning_player,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 1..2 as @e[tag=luigi,tag=scanning_player,limit=1] run function luigis_mansion:entities/luigi/animation/set/game_boy_horror
execute as @a[tag=scanning_player,limit=1] run function luigis_mansion:items/game_boy_horror/turn_screen_to_forced_value {value:"scanning",flags:[B;1b,0b],floats:[],tracker:[]}
execute if score #dialog Dialog matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"selector","selector":"@a[tag=scanning_player,limit=1]","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.player.scan_furniture.77"}]}

execute if score #dialog Dialog matches 3 run scoreboard players set #dialog Dialog -1

execute if score #dialog Dialog matches -1 as @e[tag=luigi,tag=!scanning_player,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none

execute if score #dialog Dialog matches -1 as @a[tag=scanning_player,limit=1] run function luigis_mansion:selection_menu/game_boy_horror/scan_furniture
tag @e remove scanning_player