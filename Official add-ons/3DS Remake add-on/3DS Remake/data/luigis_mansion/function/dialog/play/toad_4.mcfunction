execute if score #dialog Dialog matches 35..54 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 55
execute if score #dialog Dialog matches 34..53 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 29..32 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 8..28 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 7 if entity @a[tag=same_room,tag=select_dialog_branch_no,limit=1] run scoreboard players set #dialog Dialog 34
execute if score #dialog Dialog matches 7 if entity @a[tag=same_room,tag=select_dialog_branch_yes,limit=1] run scoreboard players set #dialog Dialog 8
execute if score #dialog Dialog matches 2..6 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..6 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 7
execute if score #dialog Dialog matches 8..32 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 33
execute if score #dialog Dialog matches 34..54 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 55
execute if score #dialog Dialog matches ..54 unless score #dialog Dialog matches 7..27 unless score #dialog Dialog matches 32..33 as @a[tag=same_room,tag=!spectator] unless entity @s[tag=dialog_menu,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 7 as @a[tag=same_room,tag=!spectator,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/choice/toad_4
execute if score #dialog Dialog matches 32 as @a[tag=same_room,tag=!spectator,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/choice/save
execute if score #dialog Dialog matches 8..27 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 33 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 55 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=toad,tag=same_room,limit=1] remove freeze_animation
tag @e[tag=toad,tag=same_room,limit=1] remove no_ai
execute if score #dialog Dialog matches 1..2 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 1.. as @a[tag=same_room] run function luigis_mansion:other/music/set/toad
execute if score #dialog Dialog matches 1 run data remove entity @e[tag=toad,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 1 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.toad",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.toad_4.1"}]}
execute if score #dialog Dialog matches 1 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.toad",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.toad_4.1.more"}]}

execute if score #dialog Dialog matches 3..6 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.toad",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.toad_4.2"}]}

execute if score #dialog Dialog matches 4 run data modify entity @e[tag=toad,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"explain"}
execute if score #dialog Dialog matches 4 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.toad",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.toad_4.3"}]}

execute if score #dialog Dialog matches 5 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.toad",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.toad_4.4"}]}

execute if score #dialog Dialog matches 6 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.toad",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.toad_4.5"}]}
execute if score #dialog Dialog matches 6 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.toad",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.toad_4.5.more"}]}

execute if score #dialog Dialog matches 7 run data remove entity @e[tag=toad,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 7 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/think

#Branch: Yes
execute if score #dialog Dialog matches 8 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/enthusiastic
execute if score #dialog Dialog matches 8 run data modify entity @e[tag=toad,tag=same_room,limit=1] data.sound set value "wow"
execute if score #dialog Dialog matches 28..32 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 28 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.toad",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.toad_4.yes.1"}]}
execute if score #dialog Dialog matches 28 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.toad",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.toad_4.yes.1.more"}]}

execute if score #dialog Dialog matches 30 run data modify entity @e[tag=toad,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"explain"}
execute if score #dialog Dialog matches 30 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.toad",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.toad_4.yes.2"}]}

execute if score #dialog Dialog matches 31 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run data modify entity @e[tag=toad,tag=same_room,limit=1] data.sound set value "yahoo"
execute if score #dialog Dialog matches 31 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.toad",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.toad_4.yes.3",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 31 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.toad",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.toad_4.yes.3.more"}]}

execute if score #dialog Dialog matches 32..33 run data remove entity @e[tag=toad,tag=same_room,limit=1] data.animation

execute if score #dialog Dialog matches 33 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {toad_4_happy:1b}
execute if score #dialog Dialog matches 33 run scoreboard players set #dialog Dialog -1

#Branch: No
execute if score #dialog Dialog matches 34 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/nod
execute if score #dialog Dialog matches 34 run advancement grant @a[tag=same_room] only luigis_mansion:vanilla/go_help_yourself courtyard
execute if score #dialog Dialog matches 34 run data modify entity @e[tag=toad,tag=same_room,limit=1] data.sound set value "mama_mia"
execute if score #dialog Dialog matches 34..55 run data modify entity @e[tag=toad,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"cry"}
execute if score #dialog Dialog matches 34 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.toad",color:"green"},{type:"translatable",translate:"3ds_remake:dialog.toad_4.no.1"}]}
execute if score #dialog Dialog matches 54 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust

execute if score #dialog Dialog matches 55 run scoreboard players set #dialog Dialog -1

execute if score #dialog Dialog matches -1 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches -1 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
tag @a[tag=same_room] remove select_dialog_branch_yes
tag @a[tag=same_room] remove select_dialog_branch_no