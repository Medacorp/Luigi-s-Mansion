scoreboard players add #dialog Dialog 1
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=same_room,tag=no_ai_dialog] remove no_ai
tag @e[tag=same_room,tag=freeze_animation_dialog] remove freeze_animation
execute if score #dialog Dialog matches 1..100 as @a[tag=same_room] run function luigis_mansion:other/music/set/area_clear
execute if score #dialog Dialog matches 1..100 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 100 run scoreboard players set #dialog Dialog -1