execute if score #dialog Dialog matches 128.. run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 126..127 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 125 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 122..124 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..121 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..147 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 148
execute if score #dialog Dialog matches 121..127 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 128.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @a[tag=same_room,limit=1] add disable_interact
tag @e[tag=same_room,tag=ghost] remove no_ai
tag @e[tag=same_room,tag=ghost] remove freeze_animation
tag @e[tag=same_room,tag=ball] remove no_ai
execute if score #dialog Dialog matches 1..147 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/danger
execute if score #dialog Dialog matches 1 run data modify entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"chauncey"}}},tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"knocked_back"}
execute if score #dialog Dialog matches 1 at @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"chauncey"}}},tag=same_room,limit=1] run playsound luigis_mansion:entity.chauncey.hit_by_ball hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 1..4 as @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"chauncey"}}},tag=same_room,limit=1] at @s if block ^ ^ ^-0.5 #luigis_mansion:ghosts_ignore if block ^ ^1 ^-0.5 #luigis_mansion:ghosts_ignore run teleport @s ^ ^ ^-0.5
execute if score #dialog Dialog matches 41 run data modify entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"chauncey"}}},tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"move"}
execute if score #dialog Dialog matches 121 run data modify entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"chauncey"}}},tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"ramble"}
execute if score #dialog Dialog matches 121..147 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 121 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.chauncey","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.chauncey.1"}]}
execute if score #dialog Dialog matches 121 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.chauncey","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.chauncey.1.more"}]}

execute if score #dialog Dialog matches 123 run data remove entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"chauncey"}}},tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 123 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.chauncey","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.chauncey.2"}]}
execute if score #dialog Dialog matches 123 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.chauncey","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.chauncey.2.more"}]}

execute if score #dialog Dialog matches 124 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.chauncey","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.chauncey.3"}]}
execute if score #dialog Dialog matches 124 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.chauncey","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.chauncey.3.more"}]}

execute if score #dialog Dialog matches 125..127 run tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"chauncey"}}},tag=same_room,limit=1] add laugh
execute if score #dialog Dialog matches 126..127 run scoreboard players set @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"chauncey"}}},tag=same_room,limit=1] ActionTime 1
execute if score #dialog Dialog matches 125 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.chauncey","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.chauncey.4"}]}

execute if score #dialog Dialog matches 127 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.chauncey","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.chauncey.5"}]}

execute if score #dialog Dialog matches 128 run scoreboard players set @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"chauncey"}}},tag=same_room,limit=1] ActionTime 0
execute if score #dialog Dialog matches 128 run tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"chauncey"}}},tag=same_room,limit=1] remove laugh
execute if score #dialog Dialog matches 128 run tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"chauncey"}}},tag=same_room,limit=1] add vanish
execute if score #dialog Dialog matches 148 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches 148 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 148 run scoreboard players set #dialog Dialog -1