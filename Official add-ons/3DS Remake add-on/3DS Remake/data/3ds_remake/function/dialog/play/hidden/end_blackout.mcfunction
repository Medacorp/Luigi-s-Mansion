execute store result score #temp ID run data get storage luigis_mansion:data dialogs[0].switch_flipper
execute as @e[tag=player,tag=same_room] if score @s ID = #temp ID run tag @s add this_player
scoreboard players reset #temp ID

scoreboard players add #dialog Dialog 1

scoreboard players reset @a[tag=this_player,limit=1] WarpTime
execute as @a[tag=this_player,limit=1,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=same_room] remove no_ai
tag @e[tag=same_room] remove freeze_animation
execute if score #dialog Dialog matches 1..59 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=luigi,tag=this_player,limit=1]",teleport:"^ ^0.5 ^-3"}
execute if score #dialog Dialog matches 60 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 60 run function 3ds_remake:dialog/play/hidden/end_blackout_clear
execute if score #dialog Dialog matches 60 run scoreboard players set #dialog Dialog -1

tag @e[tag=this_player] remove this_player