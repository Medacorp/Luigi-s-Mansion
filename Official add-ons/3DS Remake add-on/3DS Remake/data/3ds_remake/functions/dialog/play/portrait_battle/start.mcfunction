execute if score #dialog Dialog matches 3..22 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 2 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..2 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 3
execute if score #dialog Dialog matches 2 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 1 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 3.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

execute store result bossbar 3ds_remake:portrait_battle max run data get storage 3ds_remake:data loaded_mansion.high_scores.speed
execute if data storage 3ds_remake:data loaded_mansion.high_scores{speed:-1} run bossbar set 3ds_remake:portrait_battle max 2147483647
tag @e[tag=furniture,tag=door,tag=!blockade,scores={Room=1..}] remove can_play_blockade_sound
tag @e[tag=furniture,tag=door,tag=!blockade,scores={Room=1..}] add blockade
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1..22 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 1..22 as @a[tag=same_room] run function luigis_mansion:other/music/set/non_overwritten_silence

execute as @a at @s run playsound luigis_mansion:entity.ghost.laugh hostile @s ~ ~ ~ 3
execute if score #dialog Dialog matches 3 run title @a[tag=same_room] title {"type":"translatable","translate":"3ds_remake:message.portrait_battle.start"}
execute if score #dialog Dialog matches 23 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches 23 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 23 run scoreboard players set #dialog Dialog -1