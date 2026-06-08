execute if score #dialog Dialog matches 28..47 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 48
execute if score #dialog Dialog matches 27..46 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 25 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 5..24 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 25
execute if score #dialog Dialog matches 4..23 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=select_dialog_branch_no,limit=1] run scoreboard players set #dialog Dialog 27
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=select_dialog_branch_yes,limit=1] run scoreboard players set #dialog Dialog 4
execute if score #dialog Dialog matches 2 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 4.. if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 48
execute if score #dialog Dialog matches ..2 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 3
execute if score #dialog Dialog matches ..47 unless score #dialog Dialog matches 3 unless score #dialog Dialog matches 26 unless score #dialog Dialog matches 48 as @a[tag=same_room,tag=!spectator] unless entity @s[tag=dialog_menu,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 3 as @a[tag=same_room,tag=!spectator,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/choice/madame_clairvoya
execute if score #dialog Dialog matches 26 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 48.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

tag @e[tag=same_room,tag=furniture,tag=incense] remove no_ai
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}},limit=1] remove freeze_animation

execute if score #dialog Dialog matches 1 if data storage luigis_mansion:data current_state.current_data.obtained_items{marios_glove:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{shown_marios_glove:1b} run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"mario_item/glove"},progress:0,variant:1,clairvoya:1b}
execute if score #dialog Dialog matches 1 if data storage luigis_mansion:data current_state.current_data.obtained_items{marios_shoe:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{shown_marios_shoe:1b} unless data storage luigis_mansion:data dialogs[-1].clairvoya run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"mario_item/shoe"},progress:0,variant:1,clairvoya:1b}
execute if score #dialog Dialog matches 1 if data storage luigis_mansion:data current_state.current_data.obtained_items{marios_letter:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{shown_marios_letter:1b} unless data storage luigis_mansion:data dialogs[-1].clairvoya run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"mario_item/letter"},progress:0,variant:1,clairvoya:1b}
execute if score #dialog Dialog matches 1 if data storage luigis_mansion:data current_state.current_data.obtained_items{marios_star:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{shown_marios_star:1b} unless data storage luigis_mansion:data dialogs[-1].clairvoya run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"mario_item/star"},progress:0,variant:1,clairvoya:1b}
execute if score #dialog Dialog matches 1 if data storage luigis_mansion:data current_state.current_data.obtained_items{marios_hat:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{shown_marios_hat:1b} unless data storage luigis_mansion:data dialogs[-1].clairvoya run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"mario_item/hat"},progress:0,variant:1,clairvoya:1b}
execute if score #dialog Dialog matches 1 run scoreboard players set #temp Time 1
execute if score #dialog Dialog matches 1 if data storage luigis_mansion:data current_state.current_data.technical_data{shown_marios_glove:1b} run scoreboard players add #temp Time 1
execute if score #dialog Dialog matches 1 if data storage luigis_mansion:data current_state.current_data.technical_data{shown_marios_shoe:1b} run scoreboard players add #temp Time 1
execute if score #dialog Dialog matches 1 if data storage luigis_mansion:data current_state.current_data.technical_data{shown_marios_letter:1b} run scoreboard players add #temp Time 1
execute if score #dialog Dialog matches 1 if data storage luigis_mansion:data current_state.current_data.technical_data{shown_marios_star:1b} run scoreboard players add #temp Time 1
execute if score #dialog Dialog matches 1 if data storage luigis_mansion:data current_state.current_data.technical_data{shown_marios_hat:1b} run scoreboard players add #temp Time 1
execute if score #dialog Dialog matches 1 if data storage luigis_mansion:data dialogs[-1].clairvoya store result storage luigis_mansion:data dialogs[-1].variant int 1 run scoreboard players get #temp Time
execute if score #dialog Dialog matches 1 if data storage luigis_mansion:data dialogs[-1].clairvoya run data modify storage luigis_mansion:data dialogs[-1].room set from storage luigis_mansion:data dialogs[0].room
execute if score #dialog Dialog matches 1 if data storage luigis_mansion:data dialogs[-1].clairvoya run scoreboard players set #dialog Dialog -1
execute if score #dialog Dialog matches 1 run scoreboard players reset #temp Time
execute if score #dialog Dialog matches 1..48 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'madame_clairvoya'}}},limit=1] positioned ^ ^ ^3 unless entity @e[tag=same_room,tag=luigi,distance=..2,limit=1] facing entity @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'madame_clairvoya'}}},limit=1] feet",teleport:"~ ~0.5 ~ ~ ~"}
execute if score #dialog Dialog matches 1..48 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'madame_clairvoya'}}},limit=1] positioned ^ ^ ^3 if entity @e[tag=same_room,tag=luigi,distance=..2,limit=1] positioned ^3 ^ ^-1.5 facing entity @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'madame_clairvoya'}}},limit=1] feet",teleport:"~ ~0.5 ~ ~-20 ~"}
execute if score #dialog Dialog matches 1..48 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'madame_clairvoya'}}},limit=1] positioned ^ ^ ^3 if entity @e[tag=same_room,tag=luigi,distance=..2,limit=1] positioned ^-3 ^ ^-1.5 facing entity @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'madame_clairvoya'}}},limit=1] feet",teleport:"~ ~0.5 ~ ~20 ~"}
execute if score #dialog Dialog matches 1 run data modify entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}},limit=1] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if score #dialog Dialog matches 1..3 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 1..356 as @a[tag=same_room] run function luigis_mansion:other/music/set/talking_ghosts
execute if score #dialog Dialog matches 1 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.madame_clairvoya",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.madame_clairvoya.1"}]}
execute if score #dialog Dialog matches 1 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.madame_clairvoya",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.madame_clairvoya.1.more"}]}

#Branch: Yes
execute if score #dialog Dialog matches 4 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/nod
execute if score #dialog Dialog matches 4 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.madame_clairvoya",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.madame_clairvoya.yes.1"}]}
execute if score #dialog Dialog matches 24..25 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust

execute if score #dialog Dialog matches 25 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.madame_clairvoya",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.madame_clairvoya.yes.2"}]}
execute if score #dialog Dialog matches 25 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.madame_clairvoya",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.madame_clairvoya.yes.2.more"}]}

execute if score #dialog Dialog matches 26 run scoreboard players set #dialog Dialog -1

#Branch: No
execute if score #dialog Dialog matches 27 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/nod
execute if score #dialog Dialog matches 27 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.madame_clairvoya",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.madame_clairvoya.no.1"}]}
execute if score #dialog Dialog matches 47 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust

execute if score #dialog Dialog matches 48 run scoreboard players set #dialog Dialog -1

execute if score #dialog Dialog matches -1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches -1 run data remove entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}},limit=1] data.animation
execute if score #dialog Dialog matches -1 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches -1 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
tag @a[tag=same_room] remove select_dialog_branch_yes
tag @a[tag=same_room] remove select_dialog_branch_no