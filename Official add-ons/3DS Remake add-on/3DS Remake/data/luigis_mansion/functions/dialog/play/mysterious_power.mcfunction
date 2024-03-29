execute if score #dialog Dialog matches 58..147 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 52..57 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..51 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..147 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 148
execute if score #dialog Dialog matches 52..57 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 58.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

tag @e[tag=same_room,tag=mysterious_power,limit=1] remove freeze_animation
tag @e[tag=same_room,tag=mysterious_power,limit=1] remove no_ai
execute if score #dialog Dialog matches 1..147 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 1..147 as @a[tag=same_room] run function luigis_mansion:other/music/set/mysterious_power
execute if score #dialog Dialog matches 1 at @e[tag=same_room,tag=mysterious_power,limit=1] run playsound luigis_mansion:entity.boo.laugh_2 hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 40 at @e[tag=same_room,tag=mysterious_power,limit=1] run playsound luigis_mansion:entity.boo.flinch hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 51 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.1"}]}
execute if score #dialog Dialog matches 51 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.1.more"}]}

execute if score #dialog Dialog matches 53 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.2"}]}
execute if score #dialog Dialog matches 53 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.2.more"}]}

execute if score #dialog Dialog matches 54 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.3"}]}
execute if score #dialog Dialog matches 54 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.3.more"}]}

execute if score #dialog Dialog matches 55 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.4"}]}
execute if score #dialog Dialog matches 55 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.4.more"}]}

execute if score #dialog Dialog matches 56 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.5"}]}
execute if score #dialog Dialog matches 56 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.5.more"}]}

execute if score #dialog Dialog matches 57 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.mysterious_power.6"}]}

execute if score #dialog Dialog matches 78 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mysterious_power","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.mysterious_power.7"}]}
execute if score #dialog Dialog matches 78 at @e[tag=same_room,tag=mysterious_power,limit=1] run playsound luigis_mansion:entity.boo.complain hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 78 run stopsound @a[tag=same_room] music
execute if score #dialog Dialog matches 78 run playsound luigis_mansion:music.warped_by_boos music @a[tag=same_room] ~ ~ ~ 1000
execute if score #dialog Dialog matches 78 run scoreboard players set @a[tag=same_room] Music 80
execute if score #dialog Dialog matches 88.. as @e[tag=same_room,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute if score #dialog Dialog matches 88..148 as @a[tag=same_room] at @s unless block ~-0.5 ~ ~ minecraft:black_concrete positioned ~0.5 ~ ~ run function luigis_mansion:entities/player/set_position
execute if score #dialog Dialog matches 148 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches 148 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 148 as @a[tag=same_room] run function luigis_mansion:room/default_position_in_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
execute if score #dialog Dialog matches 148 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {mysterious_power:1b}
execute if score #dialog Dialog matches 148 run tag @e[tag=same_room,tag=mysterious_power,limit=1] add remove_from_existence
execute if score #dialog Dialog matches 148 run scoreboard players set #dialog Dialog -1

data remove entity @e[tag=same_room,tag=mysterious_power,limit=1] data.animation
execute if score #dialog Dialog matches 40..45 run data modify entity @e[tag=same_room,tag=mysterious_power,limit=1] data.animation set value {namespace:"luigis_mansion",id:"taunt"}
execute if score #dialog Dialog matches 78.. run data modify entity @e[tag=same_room,tag=mysterious_power,limit=1] data.animation set value {namespace:"luigis_mansion",id:"hurt"}