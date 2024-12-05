execute if score #dialog Dialog matches 22..23 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..21 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 22
execute if score #dialog Dialog matches ..20 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..23 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 24
execute if score #dialog Dialog matches ..23 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 24.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

tag @e[tag=same_room,tag=furniture,tag=incense] remove no_ai
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}},limit=1] remove freeze_animation
execute if score #dialog Dialog matches 1 run data modify entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}},limit=1] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if score #dialog Dialog matches 1.. as @a[tag=same_room] run function luigis_mansion:other/music/set/talking_ghost
execute if score #dialog Dialog matches 1 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/nod
execute if score #dialog Dialog matches 1 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.generic.1"}]}
execute if score #dialog Dialog matches 1 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.generic.1.more"}]}
execute if score #dialog Dialog matches 21 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle

execute if score #dialog Dialog matches 22 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.generic.2"}]}

execute if score #dialog Dialog matches 23 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.hat.1"}]}
execute if score #dialog Dialog matches 23 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.hat.1.more"}]}

execute if score #dialog Dialog matches 24 run data remove entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}},limit=1] data.animation
execute if score #dialog Dialog matches 24 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {shown_marios_hat:1b}
execute if score #dialog Dialog matches 24 store result score #temp Time run data get storage luigis_mansion:data dialogs[0].variant
execute if score #dialog Dialog matches 24 if score #temp Time matches 1 run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"mario_item/item_1"},progress:0}
execute if score #dialog Dialog matches 24 if score #temp Time matches 2 run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"mario_item/item_2"},progress:0}
execute if score #dialog Dialog matches 24 if score #temp Time matches 3 run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"mario_item/item_3"},progress:0}
execute if score #dialog Dialog matches 24 if score #temp Time matches 4 run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"mario_item/item_4"},progress:0}
execute if score #dialog Dialog matches 24 if score #temp Time matches 5 run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"mario_item/item_5"},progress:0}
execute if score #dialog Dialog matches 24 run data modify storage luigis_mansion:data dialogs[-1].room set from storage luigis_mansion:data dialogs[0].room
execute if score #dialog Dialog matches 24 run scoreboard players reset #temp Time
execute if score #dialog Dialog matches 24 run scoreboard players set #dialog Dialog -1