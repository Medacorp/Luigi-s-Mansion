execute if score #dialog Dialog matches 1364 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 725..1363 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 724 if entity @a[x=774.5,y=77,z=20.5,tag=!spectator,distance=..2] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..723 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..724 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 1363
execute if score #dialog Dialog matches 725..1362 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 1363
execute if score #dialog Dialog matches 1364 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 1365
execute if score #dialog Dialog matches 1364 as @a[tag=same_room,tag=!spectator,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/choice/save
execute if score #dialog Dialog matches 1365.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=e_gadd,tag=same_room,limit=1] remove freeze_animation
tag @e[tag=mario,tag=same_room,limit=1] remove freeze_animation
tag @e[tag=mario,tag=portrificationizing,tag=same_room,limit=1] remove no_ai
execute if score #dialog Dialog matches 1..1103 as @e[tag=e_gadd,tag=same_room,limit=1] at @s facing entity @e[tag=same_room,tag=mario,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if score #dialog Dialog matches 1 run teleport @e[tag=e_gadd,tag=same_room,limit=1] 774 77 -12 90 0
execute if score #dialog Dialog matches 1 run summon minecraft:armor_stand 771.01 76.47 -12 {Rotation:[-90.0f,0.0f],Pose:{Head:[0.0f,-180.0f,0.0f]},Tags:["mario","same_room","portrificationizing","cannot_be_removed"],Marker:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:custom_data":{entity:{namespace:"luigis_mansion",id:"mario"},mansion:{namespace:"luigis_mansion",id:"empty"}},"minecraft:unbreakable":{},"minecraft:damage":5,"minecraft:custom_model_data":32}}],DisabledSlots:2039583}
execute if score #dialog Dialog matches 1 store result score @e[tag=same_room,tag=mario] Room run data get storage luigis_mansion:data dialogs[0].room
execute if score #dialog Dialog matches 30 as @a[tag=same_room] run function luigis_mansion:other/music/set/non_overwritten_silence
execute if score #dialog Dialog matches 31 as @a[tag=same_room] at @s run playsound luigis_mansion:music.mario_to_normal_1 music @s ~ ~ ~ 1000
execute if score #dialog Dialog matches 31 run scoreboard players set @a[tag=same_room] Music 710
execute if score #dialog Dialog matches 723 run data modify storage luigis_mansion:data entity set value {room:-3,no_ai:1b,tags:["done_portrificationizing","cannot_be_removed"]}
execute if score #dialog Dialog matches 723 run data modify storage luigis_mansion:data entity.room set from storage luigis_mansion:data dialogs[0].room
execute if score #dialog Dialog matches 723 positioned 774 77 20 rotated -180 0 run function luigis_mansion:spawn_entities/mario/normal

execute if score #dialog Dialog matches 725.. run tag @e[tag=mario,tag=done_portrificationizing,tag=same_room,limit=1] remove no_ai
execute if score #dialog Dialog matches 803 run playsound luigis_mansion:music.mario_to_normal_2 music @a[tag=same_room] ~ ~ ~ 1000
execute if score #dialog Dialog matches 803 run scoreboard players set @a[scores={Room=-3}] Music 560
execute if score #dialog Dialog matches 1164 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.the_end"}]}
execute if score #dialog Dialog matches 1164 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.the_end.more"}]}
execute if score #dialog Dialog matches 1104 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"walk"}
execute if score #dialog Dialog matches 1104..1362 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~0.1 0 0
execute if score #dialog Dialog matches 1363 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s 774 77 14 -30 0
execute if score #dialog Dialog matches 1363 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 1363 run function luigis_mansion:dialog/play/portrificationizing/get_total_score
execute if score #dialog Dialog matches 1363 if score #temp Money matches ..4999 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.the_end.h_rank"}]}
execute if score #dialog Dialog matches 1363 if score #temp Money matches 5000..19999 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.the_end.g_rank"}]}
execute if score #dialog Dialog matches 1363 if score #temp Money matches 20000..39999 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.the_end.f_rank"}]}
execute if score #dialog Dialog matches 1363 if score #temp Money matches 40000..49999 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.the_end.e_rank"}]}
execute if score #dialog Dialog matches 1363 if score #temp Money matches 50000..59999 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.the_end.d_rank"}]}
execute if score #dialog Dialog matches 1363 if score #temp Money matches 60000..69999 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.the_end.c_rank"}]}
execute if score #dialog Dialog matches 1363 if score #temp Money matches 70000..149999 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.the_end.b_rank"}]}
execute if score #dialog Dialog matches 1363 if score #temp Money matches 150000.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.the_end.a_rank"}]}
execute if score #dialog Dialog matches 1363 if score #temp Money matches ..4999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.h set value 1b
execute if score #dialog Dialog matches 1363 if score #temp Money matches 5000..19999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.g set value 1b
execute if score #dialog Dialog matches 1363 if score #temp Money matches 20000..39999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.f set value 1b
execute if score #dialog Dialog matches 1363 if score #temp Money matches 40000..49999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.e set value 1b
execute if score #dialog Dialog matches 1363 if score #temp Money matches 50000..59999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.d set value 1b
execute if score #dialog Dialog matches 1363 if score #temp Money matches 60000..69999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.c set value 1b
execute if score #dialog Dialog matches 1363 if score #temp Money matches 70000..149999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.b set value 1b
execute if score #dialog Dialog matches 1363 if score #temp Money matches 150000.. run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.a set value 1b
execute if score #dialog Dialog matches 1363 if score #temp Money matches ..4999 run data modify storage luigis_mansion:data dialogs[0].rank set value "h"
execute if score #dialog Dialog matches 1363 if score #temp Money matches 5000..19999 run data modify storage luigis_mansion:data dialogs[0].rank set value "g"
execute if score #dialog Dialog matches 1363 if score #temp Money matches 20000..39999 run data modify storage luigis_mansion:data dialogs[0].rank set value "f"
execute if score #dialog Dialog matches 1363 if score #temp Money matches 40000..49999 run data modify storage luigis_mansion:data dialogs[0].rank set value "e"
execute if score #dialog Dialog matches 1363 if score #temp Money matches 50000..59999 run data modify storage luigis_mansion:data dialogs[0].rank set value "d"
execute if score #dialog Dialog matches 1363 if score #temp Money matches 60000..69999 run data modify storage luigis_mansion:data dialogs[0].rank set value "c"
execute if score #dialog Dialog matches 1363 if score #temp Money matches 70000..149999 run data modify storage luigis_mansion:data dialogs[0].rank set value "b"
execute if score #dialog Dialog matches 1363 if score #temp Money matches 150000.. run data modify storage luigis_mansion:data dialogs[0].rank set value "a"
execute if score #dialog Dialog matches 1363 if score #temp Money matches 1 if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:0,obtained_items:{king_boos_crown:1b}} run advancement grant @a[tag=same_room] only luigis_mansion:vanilla/spare_some_change
execute if score #dialog Dialog matches 1363 if score #temp Money matches 2 if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:1,obtained_items:{king_boos_crown:1b}} run advancement grant @a[tag=same_room] only luigis_mansion:vanilla/spare_some_change
execute if score #dialog Dialog matches 1363 if score #temp Money matches 5 if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:2,obtained_items:{king_boos_crown:1b}} run advancement grant @a[tag=same_room] only luigis_mansion:vanilla/spare_some_change
execute if score #dialog Dialog matches 1363 if score #temp Money matches 10 if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:3,obtained_items:{king_boos_crown:1b}} run advancement grant @a[tag=same_room] only luigis_mansion:vanilla/spare_some_change
execute if score #dialog Dialog matches 1363 if score #temp Money matches 142390.. run advancement grant @a[tag=same_room] only luigis_mansion:vanilla/making_wario_jealous
execute if score #dialog Dialog matches 1363 if score #temp Money matches 186440.. run advancement grant @a[tag=same_room] only luigis_mansion:vanilla/scrooge_mcduck_it_up
execute if score #dialog Dialog matches 1363 run scoreboard players reset #temp Money
execute if score #dialog Dialog matches 1363 run function luigis_mansion:room/clear_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
execute if score #dialog Dialog matches 1363 run function luigis_mansion:other/delete_current_mansion_data
#save?
execute if score #dialog Dialog matches 1365 run tag @a add show_credits
execute if score #dialog Dialog matches 1365 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 1365 as @a[tag=same_room] run function luigis_mansion:other/music/set/credits
execute if score #dialog Dialog matches 1365 run tag @e[tag=e_gadd,tag=same_room,limit=1] add can_talk_to
execute if score #dialog Dialog matches 1365 run tag @e[tag=e_gadd,tag=same_room,limit=1] remove cannot_be_removed
execute if score #dialog Dialog matches 1365 run tag @e[tag=mario,tag=same_room,limit=1] remove cannot_be_removed
execute if score #dialog Dialog matches 1365 run tag @e[tag=mario,tag=same_room,limit=1] add remove_from_existence
execute if score #dialog Dialog matches 1365 run scoreboard players set #dialog Dialog -1