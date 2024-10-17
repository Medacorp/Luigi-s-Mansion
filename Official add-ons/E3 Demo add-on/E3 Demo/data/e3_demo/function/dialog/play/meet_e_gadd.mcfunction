execute store result score #temp ID run data get storage luigis_mansion:data dialogs[0].walking_player
execute as @a[tag=same_room] if score @s ID = #temp ID run tag @s add walking_player
scoreboard players reset #temp ID
scoreboard players add #dialog Dialog 1

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if entity @e[tag=ghost,tag=same_room] as @a[tag=same_room] unless entity @s[scores={IdleTime=18}] run scoreboard players set @s IdleTime 18
execute if score #dialog Dialog matches ..72 run scoreboard players set @a[tag=walking_player,limit=1,scores={IdleTime=19}] IdleTime 18
scoreboard players set @e[tag=ghost,tag=same_room] Sound -1
execute if score #dialog Dialog matches 1 at @a[tag=same_room] run playsound luigis_mansion:ambience.parlor_wind ambient @a[tag=same_room] ~ ~ ~ 1000
execute if score #dialog Dialog matches 1 at @a[tag=same_room] run playsound luigis_mansion:entity.player.scare_causion player @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 1 run scoreboard players set @a[tag=same_room] Sound 60
execute if score #dialog Dialog matches 1..81 run stopsound @a[tag=same_room,tag=!spectator] music
execute if score #dialog Dialog matches 1..81 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/non_overwritten_silence
execute if score #dialog Dialog matches 1..81 run scoreboard players set @a[tag=same_room,tag=!spectator] Music 1308
execute if score #dialog Dialog matches 81 run playsound e3_demo:music.meet_e_gadd music @a[tag=same_room,tag=!spectator] ~ ~ ~ 1000
tag @a[tag=same_room] add disable_interact
execute if score #dialog Dialog matches 1..7 run teleport @a[tag=walking_player,limit=1] 725.5 20 28.0 90 0
execute if score #dialog Dialog matches 8..17 run tag @a[tag=walking_player,limit=1] add walking
execute if score #dialog Dialog matches 8 run teleport @a[tag=walking_player,limit=1] 725.5 20 28.1 90 0
execute if score #dialog Dialog matches 9 run teleport @a[tag=walking_player,limit=1] 725.5 20 28.2 90 0
execute if score #dialog Dialog matches 10 run teleport @a[tag=walking_player,limit=1] 725.5 20 28.3 90 0
execute if score #dialog Dialog matches 11 run teleport @a[tag=walking_player,limit=1] 725.5 20 28.4 90 0
execute if score #dialog Dialog matches 12 run teleport @a[tag=walking_player,limit=1] 725.5 20 28.5 90 0
execute if score #dialog Dialog matches 13 run teleport @a[tag=walking_player,limit=1] 725.5 20 28.6 90 0
execute if score #dialog Dialog matches 14 run teleport @a[tag=walking_player,limit=1] 725.5 20 28.7 90 0
execute if score #dialog Dialog matches 15 run teleport @a[tag=walking_player,limit=1] 725.5 20 28.8 90 0
execute if score #dialog Dialog matches 16 run teleport @a[tag=walking_player,limit=1] 725.5 20 28.9 90 0
execute if score #dialog Dialog matches 17..27 run teleport @a[tag=walking_player,limit=1] 725.5 20 29.0 90 0
execute if score #dialog Dialog matches 28..37 run tag @a[tag=walking_player,limit=1] add walking
execute if score #dialog Dialog matches 28 run teleport @a[tag=walking_player,limit=1] 725.5 20 29.1 90 0
execute if score #dialog Dialog matches 29 run teleport @a[tag=walking_player,limit=1] 725.5 20 29.2 90 0
execute if score #dialog Dialog matches 30 run teleport @a[tag=walking_player,limit=1] 725.5 20 29.3 87.75 0
execute if score #dialog Dialog matches 31 run teleport @a[tag=walking_player,limit=1] 725.5 20 29.4 85.5 0
execute if score #dialog Dialog matches 32 run teleport @a[tag=walking_player,limit=1] 725.5 20 29.5 83.25 0
execute if score #dialog Dialog matches 33 run teleport @a[tag=walking_player,limit=1] 725.5 20 29.6 81 0
execute if score #dialog Dialog matches 34 run teleport @a[tag=walking_player,limit=1] 725.5 20 29.7 78.75 0
execute if score #dialog Dialog matches 35 run teleport @a[tag=walking_player,limit=1] 725.5 20 29.8 76.5 0
execute if score #dialog Dialog matches 36 run teleport @a[tag=walking_player,limit=1] 725.5 20 29.9 74.25 0
execute if score #dialog Dialog matches 37 run teleport @a[tag=walking_player,limit=1] 725.5 20 30.0 72 0
execute if score #dialog Dialog matches 38 run teleport @a[tag=walking_player,limit=1] 725.5 20 30.0 69.75 0
execute if score #dialog Dialog matches 39 run teleport @a[tag=walking_player,limit=1] 725.5 20 30.0 67.5 0
execute if score #dialog Dialog matches 40 run teleport @a[tag=walking_player,limit=1] 725.5 20 30.0 65.25 0
execute if score #dialog Dialog matches 41 run teleport @a[tag=walking_player,limit=1] 725.5 20 30.0 63 0
execute if score #dialog Dialog matches 42 run teleport @a[tag=walking_player,limit=1] 725.5 20 30.0 60.75 0
execute if score #dialog Dialog matches 43 run teleport @a[tag=walking_player,limit=1] 725.5 20 30.0 58.5 0
execute if score #dialog Dialog matches 44 run teleport @a[tag=walking_player,limit=1] 725.5 20 30.0 56.25 0
execute if score #dialog Dialog matches 45 run teleport @a[tag=walking_player,limit=1] 725.5 20 30.0 54 0
execute if score #dialog Dialog matches 46 run teleport @a[tag=walking_player,limit=1] 725.5 20 30.0 51.75 0
execute if score #dialog Dialog matches 47 run teleport @a[tag=walking_player,limit=1] 725.5 20 30.0 49.5 0
execute if score #dialog Dialog matches 48..57 run tag @a[tag=walking_player,limit=1] add walking
execute if score #dialog Dialog matches 48 run teleport @a[tag=walking_player,limit=1] 725.5 20 30.1 47.25 0
execute if score #dialog Dialog matches 49 run teleport @a[tag=walking_player,limit=1] 725.5 20 30.2 45 0
execute if score #dialog Dialog matches 50 run teleport @a[tag=walking_player,limit=1] 725.5 20 30.3 42.75 0
execute if score #dialog Dialog matches 51 run teleport @a[tag=walking_player,limit=1] 725.5 20 30.4 40.5 0
execute if score #dialog Dialog matches 52 run teleport @a[tag=walking_player,limit=1] 725.5 20 30.5 38.25 0
execute if score #dialog Dialog matches 53 run teleport @a[tag=walking_player,limit=1] 725.5 20 30.6 36 0
execute if score #dialog Dialog matches 54 run teleport @a[tag=walking_player,limit=1] 725.5 20 30.7 33.75 0
execute if score #dialog Dialog matches 55 run teleport @a[tag=walking_player,limit=1] 725.5 20 30.8 31.5 0
execute if score #dialog Dialog matches 56 run teleport @a[tag=walking_player,limit=1] 725.5 20 30.9 29.25 0
execute if score #dialog Dialog matches 57 run teleport @a[tag=walking_player,limit=1] 725.5 20 31.0 27 0
execute if score #dialog Dialog matches 58 run teleport @a[tag=walking_player,limit=1] 725.5 20 31.0 24.75 0
execute if score #dialog Dialog matches 59 run teleport @a[tag=walking_player,limit=1] 725.5 20 31.0 22.5 0
execute if score #dialog Dialog matches 60 run teleport @a[tag=walking_player,limit=1] 725.5 20 31.0 20.25 0
execute if score #dialog Dialog matches 61 run teleport @a[tag=walking_player,limit=1] 725.5 20 31.0 18 0
execute if score #dialog Dialog matches 62 run teleport @a[tag=walking_player,limit=1] 725.5 20 31.0 15.75 0
execute if score #dialog Dialog matches 63 run teleport @a[tag=walking_player,limit=1] 725.5 20 31.0 13.5 0
execute if score #dialog Dialog matches 64 run teleport @a[tag=walking_player,limit=1] 725.5 20 31.0 11.25 0
execute if score #dialog Dialog matches 65 run teleport @a[tag=walking_player,limit=1] 725.5 20 31.0 9 0
execute if score #dialog Dialog matches 66 run teleport @a[tag=walking_player,limit=1] 725.5 20 31.0 6.75 0
execute if score #dialog Dialog matches 67 run teleport @a[tag=walking_player,limit=1] 725.5 20 31.0 4.5 0
execute if score #dialog Dialog matches 68..71 run tag @a[tag=walking_player,limit=1] add walking
execute if score #dialog Dialog matches 68 run teleport @a[tag=walking_player,limit=1] 725.5 20 31.1 2.25 0
execute if score #dialog Dialog matches 69 run teleport @a[tag=walking_player,limit=1] 725.5 20 31.2 0 0
execute if score #dialog Dialog matches 70 run teleport @a[tag=walking_player,limit=1] 725.5 20 31.3 0 0
execute if score #dialog Dialog matches 71..81 run teleport @a[tag=walking_player,limit=1] 725.5 20 31.4 0 0
execute if score #dialog Dialog matches 72 run data modify storage luigis_mansion:data entity set value {room:3,can_talk_to:0b,tags:["same_room","no_dialog_freeze"]}
execute if score #dialog Dialog matches 72 positioned 718 20 35 run function luigis_mansion:spawn_entities/e_gadd
execute if score #dialog Dialog matches 72 run data modify storage luigis_mansion:data entity set value {room:3,no_ai:1b,tags:["same_room","visible","no_dialog_freeze"],animation:{namespace:"luigis_mansion",id:"appear/normal"}}
execute if score #dialog Dialog matches 72 positioned 725 20 34.9 run function e3_demo:spawn_entities/ghost/ghost/white
execute if score #dialog Dialog matches 72 run playsound e3_demo:entity.ghost.spawn hostile @a[tag=same_room] 725 20 34.9 1
execute if score #dialog Dialog matches 72 run teleport @a[tag=same_room] 725.5 20 31.4 facing entity @e[tag=ghost,tag=same_room,limit=1] feet
execute if score #dialog Dialog matches 72 run teleport @e[tag=ghost,tag=same_room,limit=1] 725 20 34.9 -180 0
execute if score #dialog Dialog matches 72 as @a[tag=same_room] at @e[tag=ghost,tag=same_room,limit=1] run function luigis_mansion:entities/player/animation/set/scare/bash
execute if score #dialog Dialog matches 150 run tag @a[tag=walking_player,limit=1] add bash_no_move
execute if score #dialog Dialog matches 72..190 run scoreboard players set @a[tag=same_room,scores={AnimationProgress=30..}] AnimationProgress 29
execute if score #dialog Dialog matches 92 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"haunt"}
execute if score #dialog Dialog matches 72 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"selector","selector":"@a[tag=walking_player,limit=1]","color":"green"},{"type":"translatable","translate":"e3_demo:dialog.meet_e_gadd.1"}]}
execute if score #dialog Dialog matches 92..149 as @a[tag=walking_player,limit=1] at @e[tag=ghost,tag=same_room,limit=1] positioned ^ ^ ^3.5 rotated ~-180 ~ run function luigis_mansion:entities/player/animation/scare/bash_force_move
execute if score #dialog Dialog matches 92..149 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ^ ^ ^0.11 ~ ~
execute if score #dialog Dialog matches 98 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ facing 718 20 31
execute if score #dialog Dialog matches 98 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"walk"}
execute if score #dialog Dialog matches 99..129 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ^ ^ ^0.13
execute if score #dialog Dialog matches 130 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ facing 722 20 29
execute if score #dialog Dialog matches 131..150 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ^ ^ ^0.125
execute if score #dialog Dialog matches 150 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"vacuum"}
execute if score #dialog Dialog matches 150 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.poltergust set value {id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:unbreakable":{show_in_tooltip:0b},"minecraft:custom_model_data":0,"minecraft:item_model":"e3_demo:poltergust_500","minecraft:item_name":'{"type":"translatable","translate":"e3_demo:item.poltergust_500"}',"minecraft:custom_data":{namespace:"e3_demo",id:"poltergust_500",is_poltergust:1b,is_nozzle:1b,model_data:{body_right:{components:{"minecraft:custom_model_data":1,"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":2}}}}},body_left:{components:{"minecraft:custom_model_data":2,"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":1}}}}},sat_on_right:{components:{"minecraft:custom_model_data":3,"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":4}}}}},sat_on_left:{components:{"minecraft:custom_model_data":4,"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":3}}}}},idle_right:{components:{"minecraft:custom_model_data":5,"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":6}}}}},idle_left:{components:{"minecraft:custom_model_data":6,"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":5}}}}}},kill:1b}}}
execute if score #dialog Dialog matches 150..459 at @e[tag=e_gadd,tag=same_room,limit=1] positioned ~ ~0.25 ~ positioned ^ ^ ^0.5 as @e[tag=ghost,tag=same_room,limit=1] facing entity @s feet run function luigis_mansion:items/poltergust_3000/vacuuming/e_gadd
execute if score #dialog Dialog matches 150 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"hurt"}
execute if score #dialog Dialog matches 150 run tag @a[tag=walking_player,limit=1] remove bash_no_move
execute if score #dialog Dialog matches 150 at @e[tag=ghost,tag=same_room,limit=1] run playsound e3_demo:entity.ghost.hurt hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 150 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"e3_demo:entity.ghost","color":"green"},{"type":"translatable","translate":"e3_demo:dialog.meet_e_gadd.2"}]}
execute if score #dialog Dialog matches 170 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 233 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.dragged neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 220 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"flee"}
execute if score #dialog Dialog matches 220 as @e[tag=ghost,tag=same_room,limit=1] at @s run playsound e3_demo:entity.ghost.cutscene_flee hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 220 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ facing 720 20.3 28
execute if score #dialog Dialog matches 221..250 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ^ ^ ^0.2
execute if score #dialog Dialog matches 251 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ facing 718 20.3 32
execute if score #dialog Dialog matches 240 as @e[tag=ghost,tag=same_room,limit=1] at @s run playsound e3_demo:entity.ghost.cutscene_flee hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 252..271 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ^ ^ ^0.2
execute if score #dialog Dialog matches 272 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ facing 720 20.3 35
execute if score #dialog Dialog matches 273..292 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ^ ^ ^0.2
execute if score #dialog Dialog matches 293 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ facing 723 20.3 35
execute if score #dialog Dialog matches 294..323 as @e[tag=ghost,tag=same_room,limit=1] at @s facing 723 20.3 35 run teleport @s ^ ^ ^0.1
execute if score #dialog Dialog matches 317 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"haunt"}
execute if score #dialog Dialog matches 317..319 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ ~60 ~
execute if score #dialog Dialog matches 320 as @e[tag=ghost,tag=same_room,limit=1] at @s run playsound e3_demo:entity.ghost.cutscene_pull hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 340 as @e[tag=ghost,tag=same_room,limit=1] at @s run playsound e3_demo:entity.ghost.cutscene_pull hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 324..343 as @e[tag=ghost,tag=same_room,limit=1] at @s facing 725 20.3 32 rotated ~ 0 run teleport @s ^ ^ ^0.2
execute if score #dialog Dialog matches 344..373 as @e[tag=ghost,tag=same_room,limit=1] at @s facing 723 20.3 26 rotated ~ 0 run teleport @s ^ ^ ^0.2
execute if score #dialog Dialog matches 374..432 as @e[tag=ghost,tag=same_room,limit=1] at @s facing 719 20.3 26 rotated ~ 0 run teleport @s ^ ^ ^0.077
execute if score #dialog Dialog matches 320..401 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ facing entity @e[tag=e_gadd,tag=same_room,limit=1] feet
execute if score #dialog Dialog matches 391 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"punch_wind_up"}
execute if score #dialog Dialog matches 431 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"punch"}
execute if score #dialog Dialog matches 431 at @e[tag=ghost,tag=same_room,limit=1] run playsound luigis_mansion:entity.ghost.punch hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 431 at @e[tag=ghost,tag=same_room,limit=1] run playsound e3_demo:entity.ghost.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 451 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"laugh"}
execute if score #dialog Dialog matches 451 at @e[tag=ghost,tag=same_room,limit=1] run playsound e3_demo:entity.ghost.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 491 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"vanish"}
execute if score #dialog Dialog matches 491 at @e[tag=ghost,tag=same_room,limit=1] run playsound e3_demo:entity.ghost.disappear hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 531 run tag @e[tag=ghost,tag=same_room,limit=1] add remove_from_existence
execute if score #dialog Dialog matches 391..490 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ facing entity @e[tag=e_gadd,tag=same_room,limit=1] feet
execute if score #dialog Dialog matches 258 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"walk_backwards"}
execute if score #dialog Dialog matches 258..287 as @e[tag=e_gadd,tag=same_room,limit=1] at @s facing 718 20 31 rotated ~ 0 run teleport @s ^ ^ ^0.13
execute if score #dialog Dialog matches 288..317 as @e[tag=e_gadd,tag=same_room,limit=1] at @s facing 718 20 35 rotated ~ 0 run teleport @s ^ ^ ^0.13
execute if score #dialog Dialog matches 317 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"dragged"}
execute if score #dialog Dialog matches 318..347 as @e[tag=e_gadd,tag=same_room,limit=1] at @s facing 723 20 35 rotated ~ 0 run teleport @s ^ ^ ^0.125
execute if score #dialog Dialog matches 348..367 as @e[tag=e_gadd,tag=same_room,limit=1] at @s facing 725 20 32 rotated ~ 0 run teleport @s ^ ^ ^0.2
execute if score #dialog Dialog matches 367..396 as @e[tag=e_gadd,tag=same_room,limit=1] at @s facing 723 20 26 rotated ~ 0 run teleport @s ^ ^ ^0.2
execute if score #dialog Dialog matches 397..432 as @e[tag=e_gadd,tag=same_room,limit=1] at @s facing 719 20 26 rotated ~ 0 run teleport @s ^ ^ ^0.1
execute if score #dialog Dialog matches 433 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"hit"}
execute if score #dialog Dialog matches 433 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.hurt neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 433..452 as @e[tag=e_gadd,tag=same_room,limit=1] at @s facing 725 20 26 rotated ~ 0 run teleport @s ^ ^ ^0.25
execute if score #dialog Dialog matches 150..452 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ facing entity @e[tag=ghost,tag=same_room,limit=1] feet
execute if score #dialog Dialog matches 462 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"sit"}
execute if score #dialog Dialog matches 533 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.complain neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 580 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"e3_demo:dialog.meet_e_gadd.3"}]}
execute if score #dialog Dialog matches 580 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.ehdeedee neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 649 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"sit_look_up"}
execute if score #dialog Dialog matches 649 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"e3_demo:dialog.meet_e_gadd.4"}]}
execute if score #dialog Dialog matches 649 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"e3_demo:dialog.meet_e_gadd.4.more"}]}
execute if score #dialog Dialog matches 649 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.hoo_hoo_jeemee_jeemee_kehkeh neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 669..824 at @e[tag=e_gadd,tag=same_room,limit=1] facing entity @s feet run teleport @e[tag=e_gadd,tag=same_room,limit=1] ~ ~ ~ ~ ~
execute if score #dialog Dialog matches 709 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"get_up"}
execute if score #dialog Dialog matches 729 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"explain_1_hand"}
execute if score #dialog Dialog matches 765 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"e3_demo:dialog.meet_e_gadd.5","with":[{"type":"selector","selector":"@a[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 765 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"e3_demo:dialog.meet_e_gadd.5.more"}]}
execute if score #dialog Dialog matches 765 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.gay_roon_ehdeedee_odoh_tahmentahkeh neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 860 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"e3_demo:dialog.meet_e_gadd.6"}]}
execute if score #dialog Dialog matches 860 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.ohyah_ohyahmah_hey_hey_oui neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 926 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ facing 724 20 36
execute if score #dialog Dialog matches 946 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"e3_demo:dialog.meet_e_gadd.7"}]}
execute if score #dialog Dialog matches 946 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.keeyehroo_suu_suku_suku neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 946..1187 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ ~0.309917 ~
execute if score #dialog Dialog matches 1045 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"e3_demo:dialog.meet_e_gadd.8"}]}
execute if score #dialog Dialog matches 1045 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.oui_oydohroh_tahmentahkeh neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 1187 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches 1187 run data modify storage luigis_mansion:data entity set value {room:3,no_ai:1b,tags:["same_room","visible","ghost_1","no_dialog_freeze"],animation:{namespace:"luigis_mansion",id:"appear/beta"}}
execute if score #dialog Dialog matches 1187 positioned 718 20 29 run function e3_demo:spawn_entities/ghost/ghost/white
execute if score #dialog Dialog matches 1187 run playsound e3_demo:entity.ghost.spawn_beta hostile @a[tag=same_room] 718 20 29 1
execute if score #dialog Dialog matches 1187 as @e[tag=ghost_1,tag=same_room] at @s facing entity @e[tag=e_gadd,tag=same_room,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if score #dialog Dialog matches 1227 run data modify entity @e[tag=ghost_1,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"haunt"}
execute if score #dialog Dialog matches 1199 run data modify storage luigis_mansion:data entity set value {room:3,no_ai:1b,tags:["same_room","visible","ghost_2","no_dialog_freeze"],animation:{namespace:"luigis_mansion",id:"appear/beta"}}
execute if score #dialog Dialog matches 1199 positioned 718 20 26 run function e3_demo:spawn_entities/ghost/ghost/white
execute if score #dialog Dialog matches 1199 run playsound e3_demo:entity.ghost.spawn_beta hostile @a[tag=same_room] 718 20 26 1
execute if score #dialog Dialog matches 1199 as @e[tag=ghost_2,tag=same_room] at @s facing entity @e[tag=e_gadd,tag=same_room,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if score #dialog Dialog matches 1239 run data modify entity @e[tag=ghost_2,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"haunt"}
execute if score #dialog Dialog matches 1199 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"e3_demo:entity.ghost","color":"green"},{"type":"translatable","translate":"e3_demo:dialog.meet_e_gadd.9"}]}
execute if score #dialog Dialog matches 1199 positioned 718 20 26 as @e[distance=..0.1,tag=ghost,tag=same_room] at @s facing entity @e[tag=e_gadd,tag=same_room,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if score #dialog Dialog matches 1212 run data modify storage luigis_mansion:data entity set value {room:3,no_ai:1b,tags:["same_room","visible","ghost_3","no_dialog_freeze"],animation:{namespace:"luigis_mansion",id:"appear/beta"}}
execute if score #dialog Dialog matches 1212 positioned 720 20 27 run function e3_demo:spawn_entities/ghost/ghost/white
execute if score #dialog Dialog matches 1212 run playsound e3_demo:entity.ghost.spawn_beta hostile @a[tag=same_room] 720 20 27 1
execute if score #dialog Dialog matches 1212 as @e[tag=ghost_3,tag=same_room] at @s facing entity @e[tag=e_gadd,tag=same_room,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if score #dialog Dialog matches 1252 run data modify entity @e[tag=ghost_3,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"haunt"}
execute if score #dialog Dialog matches 1252 as @e[tag=ghost,tag=same_room] at @s run playsound e3_demo:entity.ghost.ambient hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 1272 as @e[tag=ghost,tag=same_room] at @s run playsound e3_demo:entity.ghost.ambient hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 1312 as @e[tag=ghost,tag=same_room] at @s run playsound e3_demo:entity.ghost.ambient hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 1332 as @e[tag=ghost,tag=same_room] at @s run playsound e3_demo:entity.ghost.ambient hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 1262 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"e3_demo:dialog.meet_e_gadd.10"}]}
execute if score #dialog Dialog matches 1262 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.tatta_tatta neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 1262..1386 as @e[tag=ghost,tag=same_room] at @s facing entity @e[tag=e_gadd,tag=same_room,limit=1] feet run teleport @s ^ ^ ^0.025
execute if score #dialog Dialog matches 1319 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"e3_demo:dialog.meet_e_gadd.11","with":[{"type":"selector","selector":"@a[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 1319 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"e3_demo:dialog.meet_e_gadd.11.more"}]}
execute if score #dialog Dialog matches 1319 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.tatta_tatta_tatta neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 1387 run teleport @e[tag=same_room,limit=1] ~ ~-100 ~
execute if score #dialog Dialog matches 1388 run tag @e[tag=same_room,type=!minecraft:player] add remove_from_existence
execute if score #dialog Dialog matches 1388 as @a[scores={MusicType=-1}] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 1388 run data modify storage luigis_mansion:data found_e_gadd set value 1b
execute if score #dialog Dialog matches 1388 run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"the_mansion"},room:-1,progress:-1}
execute if score #dialog Dialog matches 1388 as @a[tag=same_room] run function luigis_mansion:room/underground_lab/warp_to
execute if score #dialog Dialog matches 1388 run scoreboard players set #dialog Dialog -1
tag @a[tag=same_room] remove walking_player