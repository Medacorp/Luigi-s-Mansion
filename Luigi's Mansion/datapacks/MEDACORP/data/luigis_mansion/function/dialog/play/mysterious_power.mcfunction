execute if score #dialog Dialog matches 82..161 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 76..81 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..75 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..161 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 162
execute if score #dialog Dialog matches 52..81 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 82.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=same_room,tag=mysterious_power,limit=1] remove freeze_animation
tag @e[tag=same_room,tag=mysterious_power,limit=1] remove no_ai
execute if score #dialog Dialog matches 1..161 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 1..161 as @a[tag=same_room] run function luigis_mansion:other/music/set/mysterious_power
execute if score #dialog Dialog matches 1 at @e[tag=same_room,tag=mysterious_power,limit=1] as @e[tag=same_room,tag=luigi,sort=nearest,limit=1] run function luigis_mansion:entities/luigi/move/execute {execute:"rotated ~ 0",teleport:"^ ^ ^4 ~-180 ~"}
execute if score #dialog Dialog matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=same_room,tag=mysterious_power,limit=1] rotated ~ 0",teleport:"^ ^ ^4 ~-180 ~"}
execute if score #dialog Dialog matches 1..20 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^0.05 facing entity @e[tag=same_room,tag=mysterious_power,limit=1] feet"}
execute if score #dialog Dialog matches 21..40 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~ facing entity @e[tag=same_room,tag=mysterious_power,limit=1] feet"}
execute if score #dialog Dialog matches 41..45 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^-0.2 facing entity @e[tag=same_room,tag=mysterious_power,limit=1] feet"}
execute if score #dialog Dialog matches 45..70 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~ facing entity @e[tag=same_room,tag=mysterious_power,limit=1] feet"}
execute if score #dialog Dialog matches 71..75 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated as @e[tag=same_room,tag=mysterious_power,limit=1] rotated ~ 0",teleport:"^-0.3 ^ ^0.2 facing entity @e[tag=same_room,tag=mysterious_power,limit=1] feet"}
execute if score #dialog Dialog matches 71..75 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated as @e[tag=same_room,tag=mysterious_power,limit=1] rotated ~ 0",teleport:"^0.3 ^ ^0.2 facing entity @e[tag=same_room,tag=mysterious_power,limit=1] feet"}
execute if score #dialog Dialog matches 76..81 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~ facing entity @e[tag=same_room,tag=mysterious_power,limit=1] feet"}
execute if score #dialog Dialog matches 82..101 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated as @e[tag=same_room,tag=mysterious_power,limit=1] rotated ~ 0",teleport:"^0.075 ^ ^-0.05 facing entity @e[tag=same_room,tag=mysterious_power,limit=1] feet"}
execute if score #dialog Dialog matches 82..101 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated as @e[tag=same_room,tag=mysterious_power,limit=1] rotated ~ 0",teleport:"^-0.075 ^ ^-0.05 facing entity @e[tag=same_room,tag=mysterious_power,limit=1] feet"}
execute if score #dialog Dialog matches 102..161 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated as @e[tag=same_room,tag=mysterious_power,limit=1] rotated ~ 0",teleport:"^ ^ ^0.5 ~-180 0"}
execute if score #dialog Dialog matches 1 at @e[tag=same_room,tag=mysterious_power,limit=1] run playsound luigis_mansion:entity.boo.laugh_2 hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 40 at @e[tag=same_room,tag=mysterious_power,limit=1] run playsound luigis_mansion:entity.boo.flinch hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 51 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mysterious_power",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.mysterious_power.1"}]}
execute if score #dialog Dialog matches 51 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mysterious_power",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.mysterious_power.1.more"}]}

execute if score #dialog Dialog matches 77 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mysterious_power",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.mysterious_power.2"}]}
execute if score #dialog Dialog matches 77 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mysterious_power",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.mysterious_power.2.more"}]}

execute if score #dialog Dialog matches 78 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mysterious_power",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.mysterious_power.3"}]}
execute if score #dialog Dialog matches 78 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mysterious_power",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.mysterious_power.3.more"}]}

execute if score #dialog Dialog matches 79 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mysterious_power",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.mysterious_power.4"}]}
execute if score #dialog Dialog matches 79 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mysterious_power",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.mysterious_power.4.more"}]}

execute if score #dialog Dialog matches 80 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mysterious_power",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.mysterious_power.5"}]}
execute if score #dialog Dialog matches 80 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mysterious_power",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.mysterious_power.5.more"}]}

execute if score #dialog Dialog matches 81 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mysterious_power",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.mysterious_power.6"}]}

execute if score #dialog Dialog matches 82 as @a[tag=same_room] run function luigis_mansion:other/music/set/warped_by_boos
execute if score #dialog Dialog matches 102 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mysterious_power",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.mysterious_power.7"}]}
execute if score #dialog Dialog matches 102 at @e[tag=same_room,tag=mysterious_power,limit=1] run playsound luigis_mansion:entity.boo.complain hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 102..162 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated as @e[tag=same_room,tag=mysterious_power,limit=1]",teleport:"^ ^ ^0.5"}
execute if score #dialog Dialog matches 162 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 162 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 162 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 162 as @e[tag=luigi,tag=same_room] run function luigis_mansion:room/default_position_in_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
execute if score #dialog Dialog matches 162 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {mysterious_power:1b}
execute if score #dialog Dialog matches 162 run tag @e[tag=same_room,tag=mysterious_power,limit=1] add remove_from_existence
execute if score #dialog Dialog matches 162 run scoreboard players set #dialog Dialog -1

data remove entity @e[tag=same_room,tag=mysterious_power,limit=1] data.animation
execute if score #dialog Dialog matches 1..20 run data modify entity @e[tag=same_room,tag=mysterious_power,limit=1] data.animation set value {namespace:"luigis_mansion",id:"appear"}
execute if score #dialog Dialog matches 40..45 run data modify entity @e[tag=same_room,tag=mysterious_power,limit=1] data.animation set value {namespace:"luigis_mansion",id:"taunt"}
execute if score #dialog Dialog matches 102.. run data modify entity @e[tag=same_room,tag=mysterious_power,limit=1] data.animation set value {namespace:"luigis_mansion",id:"hurt"}