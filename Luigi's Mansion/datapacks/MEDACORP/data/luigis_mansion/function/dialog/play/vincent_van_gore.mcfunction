execute if score #dialog Dialog matches 2..7 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..7 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 7
execute if score #dialog Dialog matches ..7 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 8.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"vincent_van_gore"}}},tag=same_room,limit=1] remove freeze_animation
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"vincent_van_gore"}}},tag=same_room,limit=1] add visible
execute if score #dialog Dialog matches 1..7 as @a[tag=same_room] run function luigis_mansion:other/music/set/talking_ghost
execute if score #dialog Dialog matches 1..7 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 1 run data modify entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"vincent_van_gore"}}},tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"talk"}
execute if score #dialog Dialog matches 1 as @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"vincent_van_gore"}}},tag=same_room,limit=1] at @s facing entity @a[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if score #dialog Dialog matches 1 at @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"vincent_van_gore"}}},tag=same_room,limit=1] run playsound luigis_mansion:entity.vincent_van_gore.talk hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.vincent_van_gore","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.vincent_van_gore.4"}]}

execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.vincent_van_gore","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.vincent_van_gore.5"}]}

execute if score #dialog Dialog matches 4 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.vincent_van_gore","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.vincent_van_gore.6"}]}

execute if score #dialog Dialog matches 5 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.vincent_van_gore","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.vincent_van_gore.7"}]}
execute if score #dialog Dialog matches 5 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.vincent_van_gore","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.vincent_van_gore.7.more"}]}

execute if score #dialog Dialog matches 6 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.vincent_van_gore","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.vincent_van_gore.8"}]}

execute if score #dialog Dialog matches 7 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.vincent_van_gore","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.vincent_van_gore.9"}]}

execute if score #dialog Dialog matches 8 run data remove entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"vincent_van_gore"}}},tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 8 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches 8 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 8 run scoreboard players set #dialog Dialog -1