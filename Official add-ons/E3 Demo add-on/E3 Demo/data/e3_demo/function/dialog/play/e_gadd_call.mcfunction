execute if score #dialog Dialog matches ..209 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..209 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 210

tag @e[tag=ghost,tag=!hidden,tag=!normal_death,tag=!element_death,tag=same_room] add vanish
tag @e[tag=ghost,tag=!hidden,tag=!normal_death,tag=!element_death,tag=same_room] remove no_ai
tag @e[tag=ghost,tag=!hidden,tag=!normal_death,tag=!element_death,tag=same_room] remove freeze_animation
tag @e[tag=ghost,tag=same_room] add only_forced_spawn
tag @a[tag=same_room] add prevent_item_lock
tag @a[tag=same_room] add disable_interact
tag @a[tag=same_room] add disable_poltergust

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1..5 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:items/game_boy_horror/turn_screen_to_forced_value {value:"call",flags:[],floats:[5f,0f,0f,0f],tracker:[]}
execute if score #dialog Dialog matches 6.. as @a[tag=same_room,tag=!spectator] run function luigis_mansion:items/game_boy_horror/turn_screen_to_forced_value {value:"call",flags:[],floats:[2f,0f,0f,0f],tracker:[]}
execute if score #dialog Dialog matches 1 run scoreboard players set #gbh_clock Selected 108001
execute if score #dialog Dialog matches 1 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"e3_demo:dialog.e_gadd_call.1","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 1 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"e3_demo:dialog.e_gadd_call.1.more"}]}
execute if score #dialog Dialog matches 1 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 60 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"e3_demo:dialog.e_gadd_call.2"}]}
execute if score #dialog Dialog matches 60 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"e3_demo:dialog.e_gadd_call.2.more"}]}
execute if score #dialog Dialog matches 60 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oomahkah_oui_soy_soh_ooh_ck_ck neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 120 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"e3_demo:dialog.e_gadd_call.3","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 120 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"e3_demo:dialog.e_gadd_call.3.more"}]}
execute if score #dialog Dialog matches 120 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi3 neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 180 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"e3_demo:dialog.e_gadd_call.4"}]}
execute if score #dialog Dialog matches 180 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohyah_squirtbottlelaugh_bohh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 210 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches 210 unless entity @a[tag=portrait_battle,limit=1] unless score #loaded_exterior Selected matches -1 run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.load_mansion.start"}]}
execute if score #dialog Dialog matches 210 unless entity @a[tag=portrait_battle,limit=1] unless score #loaded_exterior Selected matches -1 in minecraft:overworld run schedule function luigis_mansion:room/load_exterior/empty 5
execute if score #dialog Dialog matches 210 unless entity @a[tag=portrait_battle,limit=1] as @a[tag=same_room] run function luigis_mansion:room/ghost_portrificationizer_room/warp_to
execute if score #dialog Dialog matches 210 unless entity @a[tag=portrait_battle,limit=1] run data remove storage luigis_mansion:data dialogs[{room:-3}]
execute if score #dialog Dialog matches 210 unless entity @a[tag=portrait_battle,limit=1] if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.neville{portrificationized:0b,health:0} unless data storage luigis_mansion:data dialogs[{room:-3}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"e3_demo",id:"portrait_ghosts"},room:-3,progress:-1}
execute if score #dialog Dialog matches 210 unless entity @a[tag=portrait_battle,limit=1] if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.lydia{portrificationized:0b,health:0} unless data storage luigis_mansion:data dialogs[{room:-3}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"e3_demo",id:"portrait_ghosts"},room:-3,progress:-1}
execute if score #dialog Dialog matches 210 unless entity @a[tag=portrait_battle,limit=1] if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.spooky{portrificationized:0b,health:0} unless data storage luigis_mansion:data dialogs[{room:-3}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"e3_demo",id:"portrait_ghosts"},room:-3,progress:-1}
execute if score #dialog Dialog matches 210 unless entity @a[tag=portrait_battle,limit=1] if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.miss_petunia{portrificationized:0b,health:0} unless data storage luigis_mansion:data dialogs[{room:-3}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"e3_demo",id:"portrait_ghosts"},room:-3,progress:-1}
execute if score #dialog Dialog matches 210 unless entity @a[tag=portrait_battle,limit=1] unless data storage luigis_mansion:data dialogs[{room:-3}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"e3_demo",id:"just_money"},room:-3,progress:-1}
execute if score #dialog Dialog matches 210 run tag @a[tag=portrait_battle,limit=1] remove catching_the_portrait_ghost
execute if score #dialog Dialog matches 210 run gamemode spectator @a[tag=portrait_battle,limit=1]
execute if score #dialog Dialog matches 210 run scoreboard players set #dialog Dialog -1