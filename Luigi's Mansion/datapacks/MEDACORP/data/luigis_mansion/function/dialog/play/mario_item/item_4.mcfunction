execute if score #dialog Dialog matches 49..52 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 28..48 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 25..27 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 4..24 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 2..3 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..52 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 53
execute if score #dialog Dialog matches ..52 unless score #dialog Dialog matches 4..23 unless score #dialog Dialog matches 28..47 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 4..23 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 28..47 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 53.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

tag @e[tag=same_room,tag=furniture,tag=incense] remove no_ai
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}},limit=1] remove freeze_animation
execute if score #dialog Dialog matches 1..52 as @a[tag=same_room] run function luigis_mansion:other/music/set/talking_ghost
execute if score #dialog Dialog matches 1..23 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.generic.3"}]}

execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run playsound luigis_mansion:entity.madame_clairvoya.spirits hostile @a[tag=same_room] ~ ~ ~ 1000
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.generic.4"}]}

execute if score #dialog Dialog matches 24 run data modify entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}},limit=1] data.animation set value {namespace:"luigis_mansion",id:"power"}
execute if score #dialog Dialog matches 24..27 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 24 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.generic.5"}]}

execute if score #dialog Dialog matches 26 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.generic.6"}]}

execute if score #dialog Dialog matches 27 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.generic.7"}]}

execute if score #dialog Dialog matches 28..47 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 28 run playsound luigis_mansion:entity.madame_clairvoya.spirits hostile @a[tag=same_room] ~ ~ ~ 1000
execute if score #dialog Dialog matches 48 run data remove entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}},limit=1] data.animation
execute if score #dialog Dialog matches 48..52 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/think
execute if score #dialog Dialog matches 48 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.item_4.1"}]}
execute if score #dialog Dialog matches 48 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.item_4.1.more"}]}

execute if score #dialog Dialog matches 50 run data modify entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}},limit=1] data.animation set value {namespace:"luigis_mansion",id:"explain"}
execute if score #dialog Dialog matches 50 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.item_4.2"}]}

execute if score #dialog Dialog matches 51 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.item_4.3"}]}
execute if score #dialog Dialog matches 51 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.item_4.3.more"}]}

execute if score #dialog Dialog matches 52 run data modify entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}},limit=1] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if score #dialog Dialog matches 52 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.item_4.4"}]}
execute if score #dialog Dialog matches 52 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.item_4.4.more"}]}

execute if score #dialog Dialog matches 53 run data remove entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}},limit=1] data.animation
execute if score #dialog Dialog matches 53 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches 53 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 53 run scoreboard players set #dialog Dialog -1