scoreboard players add #dialog Dialog 1
tag @a[tag=same_room] add prevent_item_lock
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=same_room,tag=freeze_animation_dialog] remove freeze_animation
tag @e[tag=same_room,tag=no_ai_dialog] remove no_ai
execute if score #dialog Dialog matches 1..39 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 1..39 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=chandelier,tag=same_room,limit=1]",teleport:"~3 ~3 ~ 90 65"}
execute if score #dialog Dialog matches 40 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 40 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 40 run scoreboard players set #dialog Dialog -1