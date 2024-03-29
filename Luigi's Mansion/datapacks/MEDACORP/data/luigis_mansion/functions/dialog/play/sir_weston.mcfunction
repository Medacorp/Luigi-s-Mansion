execute if score #dialog Dialog matches 2..6 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..6 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 7
execute if score #dialog Dialog matches ..6 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 7.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"sir_weston"}}},tag=same_room,limit=1] remove freeze_animation
execute if score #dialog Dialog matches 1..6 as @a[tag=same_room] run function luigis_mansion:other/music/set/talking_ghost
execute if score #dialog Dialog matches 1..3 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 1 facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if score #dialog Dialog matches 1 at @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"sir_weston"}}},tag=same_room,limit=1] run playsound luigis_mansion:entity.sir_weston.talk hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 1 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.sir_weston","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.sir_weston.1"}]}
execute if score #dialog Dialog matches 1 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.sir_weston","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.sir_weston.1.more"}]}

execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.sir_weston","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.sir_weston.2"}]}

execute if score #dialog Dialog matches 4.. as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 4 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.sir_weston","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.sir_weston.3"}]}
execute if score #dialog Dialog matches 4 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.sir_weston","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.sir_weston.3.more"}]}

execute if score #dialog Dialog matches 5 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.sir_weston","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.sir_weston.4"}]}

execute if score #dialog Dialog matches 6 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.sir_weston","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.sir_weston.5"}]}
execute if score #dialog Dialog matches 6 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.sir_weston","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.sir_weston.5.more"}]}

execute if score #dialog Dialog matches 7 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches 7 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 7 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {sir_weston_spoke:1b}
execute if score #dialog Dialog matches 7 run scoreboard players set #dialog Dialog -1