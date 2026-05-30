execute if score #dialog Dialog matches 2 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 2 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 3
execute if score #dialog Dialog matches ..2 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 3 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=!furniture,tag=same_room] remove freeze_animation
execute if score #dialog Dialog matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.underground_lab.leave_gooigi.1"}]}
execute if score #dialog Dialog matches 1 run playsound luigis_mansion:entity.e_gadd.talk.seedapee_ohyah neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 1 as @a[tag=gooigi,limit=1] run function 3ds_remake:entities/gooigi/revert_to_luigi
execute if score #dialog Dialog matches 1 run data modify storage luigis_mansion:data entity set value {room:-1,tags:["spawn_animation"]}
execute if score #dialog Dialog matches 1 positioned 784 77 12 run function 3ds_remake:spawn_entities/gooigi/lab

execute if score #dialog Dialog matches 3 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.seedapee_ohyah
execute if score #dialog Dialog matches 3 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 3 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 3 run scoreboard players set #dialog Dialog -1