execute store result score #temp ID run data get storage luigis_mansion:data dialogs[0].player
execute as @e[tag=player,tag=same_room] if score @s ID = #temp ID run tag @s add this_player
scoreboard players reset #temp ID

tag @e[tag=same_room,tag=door,tag=freeze_animation_dialog] remove freeze_animation
tag @e[tag=same_room,tag=door,tag=no_ai_dialog] remove no_ai
tag @e[tag=same_room,tag=!this_player] remove same_room

execute if score #dialog Dialog matches 3.. run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 2 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog -1
execute if score #dialog Dialog matches 2 if entity @a[tag=same_room,tag=select_dialog_branch_no,limit=1] run scoreboard players set #dialog Dialog -1
execute if score #dialog Dialog matches 2 if entity @a[tag=same_room,tag=select_dialog_branch_yes,limit=1] run scoreboard players set #dialog Dialog 3
execute if score #dialog Dialog matches ..2 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog -1
execute if score #dialog Dialog matches 3.. if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 73
execute if score #dialog Dialog matches 2 if data storage luigis_mansion:data current_state.luigis_mansion.current_data{blackout:1b} as @a[tag=same_room,tag=!spectator,tag=same_room] unless entity @s[tag=dialog_menu,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 2 unless data storage luigis_mansion:data current_state.luigis_mansion.current_data{blackout:1b} as @a[tag=same_room,tag=!spectator,tag=same_room,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function 3ds_remake:selection_menu/dialog/choice/front_door
execute if score #dialog Dialog matches -1 as @a[tag=same_room,tag=dialog_menu,tag=same_room] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 3.. as @a[tag=same_room,tag=dialog_menu,tag=same_room] run function luigis_mansion:selection_menu/dialog/exit

execute if score #dialog Dialog matches 1 unless data storage luigis_mansion:data current_state.luigis_mansion.current_data{blackout:1b} as @e[tag=luigi,tag=same_room,limit=1] run function luigis_mansion:entities/luigi/animation/set/think
execute if score #dialog Dialog matches 1 unless data storage luigis_mansion:data current_state.luigis_mansion.current_data{blackout:1b} run tellraw @a[tag=same_room,limit=1] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.front_door.1"}]}
execute if score #dialog Dialog matches 1 if data storage luigis_mansion:data current_state.luigis_mansion.current_data{blackout:1b} as @e[tag=luigi,tag=same_room,limit=1] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 1 if data storage luigis_mansion:data current_state.luigis_mansion.current_data{blackout:1b} run tellraw @a[tag=same_room,limit=1] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.front_door.1.alt"}]}
execute if score #dialog Dialog matches 3 as @e[tag=luigi,tag=same_room,limit=1] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 3 as @e[tag=luigi,tag=same_room,limit=1] run function luigis_mansion:entities/luigi/animation/set/nod
execute if score #dialog Dialog matches 23 run data modify storage luigis_mansion:data dialogs[0].door set value 0
execute if score #dialog Dialog matches 23 as @e[tag=luigi,tag=same_room,limit=1] at @s run tag @e[tag=door,tag=unopenable,sort=nearest,limit=1] add this_door
execute if score #dialog Dialog matches 23 as @e[tag=luigi,tag=same_room,limit=1] at @s run tag @e[tag=door,tag=unopenable,sort=nearest,limit=1] add this_door
execute if score #dialog Dialog matches 23 as @e[tag=luigi,tag=same_room,limit=1] at @s at @e[tag=this_door,limit=1] run function luigis_mansion:entities/luigi/move/execute {execute:"positioned ^ ^ ^0.5",teleport:"~ ~ ~ ~-180 ~"}
execute if score #dialog Dialog matches 23 as @a[tag=same_room,limit=1] if entity @e[tag=this_door,tag=left_hinge,limit=1] run tag @s add left_door
execute if score #dialog Dialog matches 23 as @a[tag=same_room,limit=1] run tag @e[tag=this_door,limit=1] add open_door
execute if score #dialog Dialog matches 23 as @a[tag=same_room,limit=1] at @e[tag=this_door,tag=!left_hinge,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"positioned ~ ~ ~",teleport:"^-3 ^0.5 ^2.5 ~-135 15"}
execute if score #dialog Dialog matches 23 as @a[tag=same_room,limit=1] at @e[tag=this_door,tag=left_hinge,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"positioned ~ ~ ~",teleport:"^3 ^0.5 ^2.5 ~135 15"}
execute if score #dialog Dialog matches 23 as @e[tag=luigi,tag=same_room,limit=1] if entity @e[tag=this_door,tag=!push,limit=1] run function luigis_mansion:entities/luigi/animation/set/door/open/pull
execute if score #dialog Dialog matches 23 as @e[tag=luigi,tag=same_room,limit=1] if entity @e[tag=this_door,tag=push,limit=1] run function luigis_mansion:entities/luigi/animation/set/door/open/push
execute if score #dialog Dialog matches 23 as @a[tag=same_room,limit=1] run tag @e[tag=this_door,limit=1] remove this_door
execute if score #dialog Dialog matches 24.. as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"positioned ~ ~ ~",teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 57..67 as @e[tag=luigi,tag=same_room,limit=1] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^0.1"}
execute if score #dialog Dialog matches 73 as @a[tag=same_room,limit=1] run function luigis_mansion:room/exterior/enter_lab
execute if score #dialog Dialog matches 73 run scoreboard players set #dialog Dialog -1
execute if score #dialog Dialog matches -1 as @e[tag=luigi,tag=same_room,limit=1] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches -1 as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/reset

tag @a[tag=same_room,limit=1] remove select_dialog_branch_yes
tag @a[tag=same_room,limit=1] remove select_dialog_branch_no
tag @e[tag=this_player] remove this_player