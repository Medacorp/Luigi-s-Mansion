execute if score #dialog Dialog matches 2..21 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 27
execute if score #dialog Dialog matches ..20 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 1..21 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 27
execute if score #dialog Dialog matches ..21 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 22 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=!furniture,tag=same_room] remove freeze_animation
execute if score #dialog Dialog matches 1 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if score #dialog Dialog matches 1 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/nod
execute if score #dialog Dialog matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.underground_lab.change_amiibo.2.none"}]}
execute if score #dialog Dialog matches 1 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.yahmum_bah neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 21 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust

execute if score #dialog Dialog matches 22 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 22 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 22 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.yahmum_bah
execute if score #dialog Dialog matches 22 run scoreboard players set #dialog Dialog -1