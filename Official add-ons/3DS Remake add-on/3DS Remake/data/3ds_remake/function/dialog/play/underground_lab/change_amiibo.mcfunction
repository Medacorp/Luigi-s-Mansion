execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 2 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 4
execute if score #dialog Dialog matches 1..2 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 3
execute if score #dialog Dialog matches ..2 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,advancements={3ds_remake:3ds_remake/amiibo=true}] as @a[tag=same_room,tag=!spectator,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function 3ds_remake:selection_menu/dialog/choice/amiibo
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,advancements={3ds_remake:3ds_remake/amiibo=false}] as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 4.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=!furniture,tag=same_room] remove freeze_animation
execute if score #dialog Dialog matches 1 if entity @a[tag=same_room,advancements={3ds_remake:3ds_remake/amiibo=true}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.underground_lab.change_amiibo.1"}]}
execute if score #dialog Dialog matches 1 if entity @a[tag=same_room,advancements={3ds_remake:3ds_remake/amiibo=true}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.underground_lab.change_amiibo.1.more"}]}
execute if score #dialog Dialog matches 1 if entity @a[tag=same_room,advancements={3ds_remake:3ds_remake/amiibo=true}] run playsound luigis_mansion:entity.e_gadd.talk.odoh_pahn_pahn neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 1 if entity @a[tag=same_room,advancements={3ds_remake:3ds_remake/amiibo=false}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.underground_lab.change_amiibo.1.alt"}]}
execute if score #dialog Dialog matches 1 if entity @a[tag=same_room,advancements={3ds_remake:3ds_remake/amiibo=false}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.underground_lab.change_amiibo.1.alt.more"}]}
execute if score #dialog Dialog matches 1 if entity @a[tag=same_room,advancements={3ds_remake:3ds_remake/amiibo=false}] run playsound luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_soh_kah_oydohroh neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,advancements={3ds_remake:3ds_remake/amiibo=true}] as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/think
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,advancements={3ds_remake:3ds_remake/amiibo=false}] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_soh_kah_oydohroh
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,advancements={3ds_remake:3ds_remake/amiibo=false}] as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,advancements={3ds_remake:3ds_remake/amiibo=false}] run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,advancements={3ds_remake:3ds_remake/amiibo=false}] run scoreboard players set #dialog Dialog -1
execute if score #dialog Dialog matches 4 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.odoh_pahn_pahn
execute if score #dialog Dialog matches 4 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 4 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 4 run scoreboard players set #dialog Dialog -1