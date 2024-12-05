execute if score #dialog Dialog matches 69..128 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 66..67 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 65 if entity @a[tag=same_room,tag=select_dialog_branch_no,limit=1] run scoreboard players set #dialog Dialog 69
execute if score #dialog Dialog matches 65 if entity @a[tag=same_room,tag=select_dialog_branch_yes,limit=1] run scoreboard players set #dialog Dialog 66
execute if score #dialog Dialog matches 62..64 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..61 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..64 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 65
execute if score #dialog Dialog matches 66..67 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 68
execute if score #dialog Dialog matches 69..128 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 129
execute if score #dialog Dialog matches 61..67 unless score #dialog Dialog matches 65 as @a[tag=same_room,tag=!spectator] unless entity @s[tag=dialog_menu,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 65 as @a[tag=same_room,tag=!spectator,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/choice/twins
execute if score #dialog Dialog matches 68.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"henry"}}},limit=1] remove freeze_animation
tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"orville"}}},limit=1] remove freeze_animation
tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"henry"}}},limit=1] add visible
tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"orville"}}},limit=1] add visible
execute if score #dialog Dialog matches 1 run data modify entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"henry"}}},limit=1] data.animation set value {namespace:"luigis_mansion",id:"appear"}
execute if score #dialog Dialog matches 1 run data modify entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"orville"}}},limit=1] data.animation set value {namespace:"luigis_mansion",id:"appear"}
execute if score #dialog Dialog matches 1 run data modify entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"henry"}}},tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"talk"}
execute if score #dialog Dialog matches 1 run data modify entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"orville"}}},tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"talk"}
execute if score #dialog Dialog matches 1 at @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"henry"}}},limit=1] run playsound luigis_mansion:entity.henry.spawn hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 1 at @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"orville"}}},limit=1] run playsound luigis_mansion:entity.orville.spawn hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 1..67 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 31 run playsound luigis_mansion:music.solve_puzzle music @a[tag=same_room] ~ ~ ~ 10000
execute if score #dialog Dialog matches 31 run scoreboard players set @a[tag=same_room,scores={Music=..30}] Music 30
execute if score #dialog Dialog matches 61.. as @a[tag=same_room] run function luigis_mansion:other/music/set/talking_ghost
execute if score #dialog Dialog matches 61..67 run data remove entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"henry"}}},limit=1] data.animation
execute if score #dialog Dialog matches 61..67 run data remove entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"orville"}}},limit=1] data.animation
execute if score #dialog Dialog matches 61 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.orville","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.twins.1"}]}
execute if score #dialog Dialog matches 61 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.orville","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.twins.1.more"}]}

execute if score #dialog Dialog matches 63 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.henry","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.twins.2"}]}
execute if score #dialog Dialog matches 63 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.henry","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.twins.2.more"}]}

execute if score #dialog Dialog matches 64 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.orville","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.twins.3"}]}

#65 choice

#Branch: Yes
execute if score #dialog Dialog matches 66 if entity @a[tag=same_room,tag=select_dialog_branch_yes,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.henry","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.twins.yes.1"}]}

execute if score #dialog Dialog matches 67 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.orville","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.twins.yes.2"}]}
execute if score #dialog Dialog matches 67 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.orville","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.twins.yes.2.more"}]}

execute if score #dialog Dialog matches 68 run scoreboard players add #the_twins_room Wave 1
execute if score #dialog Dialog matches 68 run scoreboard players set #dialog Dialog -1

#Branch: No
execute if score #dialog Dialog matches 69..128 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 69 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.orville","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.twins.no.1"}]}
execute if score #dialog Dialog matches 129 run scoreboard players set #dialog Dialog -1

execute if score #dialog Dialog matches -1 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches -1 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches -1 run tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"orville"}}},limit=1] add remove_from_existence
execute if score #dialog Dialog matches -1 run tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"henry"}}},limit=1] add remove_from_existence
tag @a[tag=same_room] remove select_dialog_branch_yes
tag @a[tag=same_room] remove select_dialog_branch_no