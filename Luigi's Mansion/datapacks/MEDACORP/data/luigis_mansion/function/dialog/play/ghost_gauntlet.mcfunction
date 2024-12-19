scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..331 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 332

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"vincent_van_gore"}}},tag=same_room,limit=1] remove freeze_animation
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"vincent_van_gore"}}},tag=same_room,limit=1] add visible
execute if score #dialog Dialog matches 1..331 as @a[tag=same_room] run function luigis_mansion:other/music/set/talking_ghosts
execute if score #dialog Dialog matches 1..331 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 60 at @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"vincent_van_gore"}}},tag=same_room,limit=1] run playsound luigis_mansion:entity.vincent_van_gore.talk hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 60 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.vincent_van_gore","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.vincent_van_gore.1"}]}
execute if score #dialog Dialog matches 60 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.vincent_van_gore","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.vincent_van_gore.1.more"}]}

execute if score #dialog Dialog matches 140..331 as @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"vincent_van_gore"}}},tag=same_room,limit=1] at @s facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if score #dialog Dialog matches 140 run data modify entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"vincent_van_gore"}}},tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"talk"}
execute if score #dialog Dialog matches 140 at @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"vincent_van_gore"}}},tag=same_room,limit=1] run playsound luigis_mansion:entity.vincent_van_gore.talk hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 140 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.vincent_van_gore","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.vincent_van_gore.2"}]}
execute if score #dialog Dialog matches 140 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.vincent_van_gore","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.vincent_van_gore.2.more"}]}

execute if score #dialog Dialog matches 236 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.vincent_van_gore","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.vincent_van_gore.3"}]}
execute if score #dialog Dialog matches 236 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.vincent_van_gore","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.vincent_van_gore.3.more"}]}

execute if score #dialog Dialog matches 272 run data modify entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"vincent_van_gore"}}},tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"magic"}
execute if score #dialog Dialog matches 272 at @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"vincent_van_gore"}}},tag=same_room,limit=1] run playsound luigis_mansion:entity.vincent_van_gore.awake hostile @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 332 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {vincent_van_gore_spoke:1b}
execute if score #dialog Dialog matches 332 run data remove entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"vincent_van_gore"}}},tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 332 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 332 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 332 run scoreboard players set #dialog Dialog -1