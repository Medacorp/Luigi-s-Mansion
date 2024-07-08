execute if score #dialog Dialog matches 47.. run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 43..46 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 22..42 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 21 if entity @a[tag=same_room,tag=game_boy_horror_selected,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..20 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..66 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 67
execute if score #dialog Dialog matches 42..46 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 47.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1..19 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 20 as @a[tag=same_room] run tellraw @s {"type":"translatable","translate":"chat.type.text","with":[{"type":"selector","selector":"@s","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.player.ringing_game_boy_horror"}]}
execute if score #dialog Dialog matches 20..21 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 20..41 as @a[tag=same_room] run function luigis_mansion:other/music/set/game_boy_horror_calling

execute if score #dialog Dialog matches 22 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/nod
execute if score #dialog Dialog matches 42..46 run scoreboard players set @a[tag=same_room] ForceScreen 1
execute if score #dialog Dialog matches 42..46 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/game_boy_horror
execute if score #dialog Dialog matches 42..46 as @a[tag=same_room] run function luigis_mansion:other/music/set/game_boy_horror
execute if score #dialog Dialog matches 42 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.grabbing_ghosts.1"}]}
execute if score #dialog Dialog matches 42 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.grabbing_ghosts.1.more"}]}
execute if score #dialog Dialog matches 42 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohyah_squirtbottlelaugh_bohh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 44 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ohyah_squirtbottlelaugh_bohh
execute if score #dialog Dialog matches 44 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.grabbing_ghosts.2"}]}
execute if score #dialog Dialog matches 44 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.grabbing_ghosts.2.more"}]}
execute if score #dialog Dialog matches 44 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mee_ohyah_mee neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 45 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mee_ohyah_mee
execute if score #dialog Dialog matches 45 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.grabbing_ghosts.3"}]}
execute if score #dialog Dialog matches 45 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.grabbing_ghosts.3.more"}]}
execute if score #dialog Dialog matches 45 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_oui_oohmakah_tahmentahkeh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 46 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_oui_oohmakah_tahmentahkeh
execute if score #dialog Dialog matches 46 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.grabbing_ghosts.4","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 46 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.grabbing_ghosts.4.more"}]}
execute if score #dialog Dialog matches 46 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.odoh_luigi neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 47 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 47 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 47 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches 47 run scoreboard players set #dialog Dialog -1