execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if entity @a[tag=same_room,scores={Offline=1..}] run scoreboard players set #dialog Dialog 1
execute if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog -1
execute if data storage luigis_mansion:data rooms.training_room{cleared:0b} run scoreboard players set #dialog Dialog -2
execute if score #dialog Dialog matches 0.. as @a[tag=same_room,tag=!spectator,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/choice/training_room

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
scoreboard players set @a[tag=same_room] ForceScreen 1
execute as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/game_boy_horror
execute if score #dialog Dialog matches 1 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.oui_oydohroh_tahmentahkeh2
execute if score #dialog Dialog matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"luigis_mansion:message.training_type"}]}
execute if score #dialog Dialog matches 1 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oui_oydohroh_tahmentahkeh2 neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches -2 run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"3ds_remake",id:"training_room"},progress:0}
execute if score #dialog Dialog matches -2 run data modify storage luigis_mansion:data dialogs[-1].room set from storage luigis_mansion:data dialogs[0].room
execute if score #dialog Dialog matches -2 run scoreboard players set #dialog Dialog -1