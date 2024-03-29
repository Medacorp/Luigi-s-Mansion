execute if score #dialog Dialog matches 72..74 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 51..71 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 48..50 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 27..47 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 23..26 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..22 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 23
execute if score #dialog Dialog matches ..21 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..74 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 75
execute if score #dialog Dialog matches ..74 unless score #dialog Dialog matches 27..46 unless score #dialog Dialog matches 51..70 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 27..46 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 51..70 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 75.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}},limit=1] remove freeze_animation
execute if score #dialog Dialog matches 1..74 as @a[tag=same_room] run function luigis_mansion:other/music/set/talking_ghost
execute if score #dialog Dialog matches 1 run data modify entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}},limit=1] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if score #dialog Dialog matches 1 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/nod
execute if score #dialog Dialog matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.item_1.1"}]}
execute if score #dialog Dialog matches 21..46 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle

execute if score #dialog Dialog matches 23 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.item_1.2"}]}

execute if score #dialog Dialog matches 24 run data modify entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}},limit=1] data.animation set value {namespace:"luigis_mansion",id:"explain"}
execute if score #dialog Dialog matches 24 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.item_1.3"}]}
execute if score #dialog Dialog matches 24 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.item_1.3.more"}]}

execute if score #dialog Dialog matches 25 run data remove entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}},limit=1] data.animation
execute if score #dialog Dialog matches 25 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.generic.3"}]}

execute if score #dialog Dialog matches 26 run playsound luigis_mansion:entity.madame_clairvoya.spirits hostile @a[tag=same_room] ~ ~ ~ 1000
execute if score #dialog Dialog matches 26 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.generic.4"}]}

execute if score #dialog Dialog matches 47 run data modify entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}},limit=1] data.animation set value {namespace:"luigis_mansion",id:"power"}
execute if score #dialog Dialog matches 47..50 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 47 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.generic.5"}]}

execute if score #dialog Dialog matches 49 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.generic.6"}]}

execute if score #dialog Dialog matches 50 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.generic.7"}]}

execute if score #dialog Dialog matches 51..70 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 51 run playsound luigis_mansion:entity.madame_clairvoya.spirits hostile @a[tag=same_room] ~ ~ ~ 1000
execute if score #dialog Dialog matches 71 run data modify entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}},limit=1] data.animation set value {namespace:"luigis_mansion",id:"explain"}
execute if score #dialog Dialog matches 71..74 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/think
execute if score #dialog Dialog matches 71 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.item_1.4"}]}

execute if score #dialog Dialog matches 73..75 run data remove entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}},limit=1] data.animation
execute if score #dialog Dialog matches 73 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.item_1.5"}]}

execute if score #dialog Dialog matches 74 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.item_1.6"}]}
execute if score #dialog Dialog matches 74 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.item_1.6.more"}]}

execute if score #dialog Dialog matches 75 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches 75 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 75 run scoreboard players set #dialog Dialog -1