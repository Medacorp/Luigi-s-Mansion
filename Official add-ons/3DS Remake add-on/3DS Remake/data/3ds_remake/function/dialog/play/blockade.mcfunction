scoreboard players add #dialog Dialog 1
tag @a[tag=same_room] add prevent_item_lock
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=same_room,tag=door] remove freeze_animation
tag @e[tag=same_room,tag=door] remove no_ai
execute if score #dialog Dialog matches 1..38 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 1..38 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=door,tag=same_room,sort=nearest,limit=1]",teleport:"^ ^ ^2 ~-180 0"}
execute if score #dialog Dialog matches 40 run tag @e[tag=door,tag=same_room] add blockade
execute if score #dialog Dialog matches 40 run tag @e[tag=door,tag=same_room] add no_dialog
execute if score #dialog Dialog matches 39 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 40 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/scare/normal
execute if score #dialog Dialog matches 60 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 60 run scoreboard players set #dialog Dialog -1