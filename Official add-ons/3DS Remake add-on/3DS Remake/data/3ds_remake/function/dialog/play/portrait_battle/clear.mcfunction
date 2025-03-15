execute if score #dialog Dialog matches 132 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 131 if entity @a[tag=same_room,tag=!using_selection_menu,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 130 if entity @a[tag=same_room,tag=gallery_portrait_menu,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..129 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..129 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 130
execute if score #dialog Dialog matches 130..131 as @a[tag=same_room,tag=!spectator,tag=!gallery_portrait_menu] unless entity @s[tag=using_selection_menu] run function 3ds_remake:selection_menu/gallery_portrait/portrait_battle_results
execute if score #dialog Dialog matches 132 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu] unless entity @s[tag=using_selection_menu] run function luigis_mansion:selection_menu/dialog/choice/save
execute if score #dialog Dialog matches ..129 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 133.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit

execute if score #dialog Dialog matches 1..132 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 1..132 as @a[tag=same_room] run function luigis_mansion:other/music/set/area_clear
execute if score #dialog Dialog matches 70 run title @a[tag=same_room] title {type:"translatable",translate:"3ds_remake:message.gallery.portrait_battle.clear"}
execute if score #dialog Dialog matches 130..132 as @a[tag=same_room] run function luigis_mansion:other/music/set/portraits

execute if score #dialog Dialog matches 133 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 133 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 133 run function 3ds_remake:selection_menu/gallery_portrait/end_portrait_battle with storage luigis_mansion:data current_state.current_data.portrait_battle.position
execute if score #dialog Dialog matches 133 run scoreboard players set #dialog Dialog -1