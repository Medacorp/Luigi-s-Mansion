execute store result score #temp ID run data get storage luigis_mansion:data dialogs[0].player
execute as @e[tag=luigi,tag=same_room] if score @s ID = #temp ID run tag @s add boss_catching_player
scoreboard players reset #temp ID
scoreboard players add #dialog Dialog 1
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=same_room,tag=no_ai_dialog] remove no_ai
tag @e[tag=same_room,tag=freeze_animation_dialog] remove freeze_animation
execute if score #dialog Dialog matches 1..100 as @a[tag=same_room] run function luigis_mansion:other/music/set/area_clear
execute if score #dialog Dialog matches 1..30 as @e[tag=luigi,tag=same_room,tag=!boss_catching_player] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 1..30 as @e[tag=boss_catching_player,limit=1] run function luigis_mansion:entities/luigi/animation/set/put_poltergust_away_stylishly
execute if score #dialog Dialog matches 31..99 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/celebrate
execute if score #dialog Dialog matches 100 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 100 run scoreboard players set #dialog Dialog -1
tag @e[tag=boss_catching_player,limit=1] remove boss_catching_player