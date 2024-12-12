execute if score #dialog Dialog matches 104..530 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 98..103 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 67..97 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 62..66 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..61 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..530 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 531
execute if score #dialog Dialog matches 62..103 unless score #dialog Dialog matches 67..97 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 67..97 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 104.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

tag @e[tag=same_room,tag=furniture,tag=incense] remove no_ai
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"mario"}}},limit=1] remove freeze_animation
tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"bowser"}}},limit=1] remove freeze_animation
tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] remove freeze_animation
execute if score #dialog Dialog matches 1 at @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] as @a[tag=same_room,distance=..5.9,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"645 93 -18 90 0"}
execute if score #dialog Dialog matches 1..430 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 1 run scoreboard players set #can_warp Selected 0
execute if score #dialog Dialog matches 1..514 as @a[tag=same_room] run function luigis_mansion:other/music/set/talking_king_boo
execute if score #dialog Dialog matches 61 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.1"}]}

execute if score #dialog Dialog matches 63 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.2"}]}

execute if score #dialog Dialog matches 64 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.3"}]}

execute if score #dialog Dialog matches 65 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.4"}]}

execute if score #dialog Dialog matches 66 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.5"}]}
execute if score #dialog Dialog matches 66 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.5.more"}]}

execute if score #dialog Dialog matches 67 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.6"}]}
execute if score #dialog Dialog matches 67..86 as @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] at @s run teleport @s ~ ~ ~ ~9 ~
execute if score #dialog Dialog matches 87 at @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] run playsound luigis_mansion:entity.king_boo.laugh_2 hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 97 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.7","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 97 if score #players Totals matches 2..4 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.7.more"}]}
execute if score #dialog Dialog matches 97 if score #players Totals matches 5.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.7.even_more","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}

execute if score #dialog Dialog matches 99 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.8"}]}
execute if score #dialog Dialog matches 99 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.8.more"}]}

execute if score #dialog Dialog matches 100 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.9"}]}
execute if score #dialog Dialog matches 100 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.9.more"}]}

execute if score #dialog Dialog matches 101 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.10"}]}
execute if score #dialog Dialog matches 101 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.10.more"}]}

execute if score #dialog Dialog matches 102 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.11"}]}
execute if score #dialog Dialog matches 102 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.11.more"}]}

execute if score #dialog Dialog matches 103 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.12"}]}
execute if score #dialog Dialog matches 103 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.12.more"}]}

execute if score #dialog Dialog matches 104 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.13"}]}
execute if score #dialog Dialog matches 104..113 as @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] at @s run teleport @s ~0.1 ~ ~
execute if score #dialog Dialog matches 114 run teleport @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] 640 93 -18
execute if score #dialog Dialog matches 134 run data modify entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] data.animation set value {namespace:"luigis_mansion",id:"magic"}
execute if score #dialog Dialog matches 134 run function #luigis_mansion:room/normal/secret_altar/turn_lights/off
execute if score #dialog Dialog matches 134 at @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] run playsound luigis_mansion:entity.king_boo.magic hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 134 run stopsound @a[tag=same_room] music
execute if score #dialog Dialog matches 134 run playsound luigis_mansion:music.sucked_into_painting music @a[tag=same_room] ~ ~ ~ 10000
execute if score #dialog Dialog matches 134 run scoreboard players set @a[tag=same_room] Music 400
execute if score #dialog Dialog matches 134..153 run effect give @a[tag=same_room] minecraft:nausea 6 0 true
execute if score #dialog Dialog matches 154..173 run effect give @a[tag=same_room] minecraft:nausea 5 0 true
execute if score #dialog Dialog matches 174 as @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"mario"}}},limit=1] at @s positioned ^ ^-2.5 ^-1 run function luigis_mansion:spawn_entities/bowser/painting
execute if score #dialog Dialog matches 174..193 run effect give @a[tag=same_room] minecraft:nausea 4 0 true
execute if score #dialog Dialog matches 194..213 run effect give @a[tag=same_room] minecraft:nausea 3 0 true
execute if score #dialog Dialog matches 214 run tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"mario"}}},limit=1] add remove_from_existence
execute if score #dialog Dialog matches 214..233 run effect give @a[tag=same_room] minecraft:nausea 2 0 true
execute if score #dialog Dialog matches 234..253 run effect give @a[tag=same_room] minecraft:nausea 1 0 true
execute if score #dialog Dialog matches 254 run data remove entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] data.animation
execute if score #dialog Dialog matches 264..284 as @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] at @s facing 633 94 -18 run teleport @s ^ ^ ^0.3 ~ ~
execute if score #dialog Dialog matches 304 run data modify entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"bowser"}}},limit=1] data.animation set value {namespace:"luigis_mansion",id:"painting"}
execute if score #dialog Dialog matches 371.. positioned 636 95 -18 run particle minecraft:dust{color:16777215,scale:1f} ~ ~ ~ 0 0 0 0 10
execute if score #dialog Dialog matches 371.. positioned 637 95 -18 run particle minecraft:dust{color:16777215,scale:1f} ~ ~ ~ 0 0 0 0 10
execute if score #dialog Dialog matches 371.. positioned 638 95 -18 run particle minecraft:dust{color:16777215,scale:1f} ~ ~ ~ 0 0 0 0 10
execute if score #dialog Dialog matches 431 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 431 at @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/knockback/flee
execute if score #dialog Dialog matches 431.. as @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] unless entity @s[scores={PoltergustSound=1..}] run playsound luigis_mansion:entity.bowser.vacuum hostile @a[tag=same_room] ~ ~ ~ 3
execute if score #dialog Dialog matches 431.. as @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] unless entity @s[scores={PoltergustSound=1..}] run scoreboard players set @s PoltergustSound 20
execute if score #dialog Dialog matches 431..470 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing 635 94 -18",teleport:"^ ^ ^0.3"}
execute if score #dialog Dialog matches 471..590 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing 635 94 -18",teleport:"^ ^ ^0.5"}
execute if score #dialog Dialog matches 491.. run teleport @a[tag=same_room,tag=!spectator] 635 94 -18
execute if score #dialog Dialog matches 531 run tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] add remove_from_existence
execute if score #dialog Dialog matches 531 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 531 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 531 as @a[tag=same_room] run function luigis_mansion:room/normal/king_boo_battle/warp_to
execute if score #dialog Dialog matches 531 run scoreboard players set #dialog Dialog -1
tag @a[tag=same_room] add disable_interact