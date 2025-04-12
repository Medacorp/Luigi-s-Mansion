execute store result score #temp ID run data get storage luigis_mansion:data dialogs[0].walking_player
execute as @e[tag=player,tag=same_room] if score @s ID = #temp ID run tag @s add walking_player
scoreboard players reset #temp ID
scoreboard players add #dialog Dialog 1

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=same_room,tag=door] remove freeze_animation
tag @e[tag=same_room,tag=door] remove no_ai
tag @e[tag=same_room,tag=!no_ai_dialog,tag=!remove_after_dialog] remove freeze_animation
scoreboard players set @e[tag=ghost,tag=same_room] Sound -1
scoreboard players set @e[tag=luigi,tag=same_room] IdleTime 0
execute if score #dialog Dialog matches 1 at @a[tag=same_room] run playsound luigis_mansion:ambience.parlor_wind ambient @a[tag=same_room] ~ ~ ~ 1000
execute if score #dialog Dialog matches 1 as @e[tag=luigi,tag=walking_player,limit=1] run function luigis_mansion:entities/luigi/animation/set/scare/causion
execute if score #dialog Dialog matches 1..100 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/non_overwritten_silence
execute if score #dialog Dialog matches 101 as @a[tag=same_room] run function e3_demo:other/music/set/force/meet_e_gadd
execute if score #dialog Dialog matches 1 as @e[tag=luigi,tag=walking_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"726 20 27 90 0"}
execute if score #dialog Dialog matches 2..70 as @e[tag=luigi,tag=walking_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"726 20 ~0.0125 ~-0.8125 0"}
execute if score #dialog Dialog matches 90 as @e[tag=luigi,tag=walking_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"726 20 28 25 0"}
execute if score #dialog Dialog matches 740 as @e[tag=luigi,tag=walking_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"726.0 20 25.0 45 0"}
execute if score #dialog Dialog matches 1300 as @e[tag=luigi,tag=walking_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"726.0 20 25.0 60 0"}
execute if score #dialog Dialog matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"724 20 28.0 -85 0"}
execute if score #dialog Dialog matches 2..80 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"724.65 20 ~0.00625 ~0.25 0"}
execute if score #dialog Dialog matches 81..105 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"724.65 20 28 -65 0"}
execute if score #dialog Dialog matches 80 run data modify storage luigis_mansion:data entity set value {room:3,can_talk_to:0b,tags:["same_room","no_dialog_freeze","remove_after_dialog"]}
execute if score #dialog Dialog matches 80 positioned 718 20 35 run function luigis_mansion:spawn_entities/e_gadd
execute if score #dialog Dialog matches 80 run data modify storage luigis_mansion:data entity set value {room:3,no_ai:1b,rotation:[-155f,0f],tags:["same_room","visible","no_dialog_freeze","remove_after_dialog"],animation:{namespace:"luigis_mansion",id:"appear/normal"}}
execute if score #dialog Dialog matches 80 positioned 725 20.2 30 run function e3_demo:spawn_entities/ghost/ghost/white
execute if score #dialog Dialog matches 80 run playsound e3_demo:entity.ghost.spawn hostile @a[tag=same_room] 725 20.2 30 1
execute if score #dialog Dialog matches 90 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 90 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"selector",selector:"@a[tag=walking_player,limit=1]",color:"green"},{type:"translatable",translate:"e3_demo:dialog.meet_e_gadd.1"}]}
execute if score #dialog Dialog matches 90 as @e[tag=luigi,tag=same_room] at @e[tag=ghost,tag=same_room,limit=1] run function luigis_mansion:entities/luigi/animation/set/scare/bash
execute if score #dialog Dialog matches 90 run tag @e[tag=luigi,tag=walking_player,limit=1] add bash_no_move
execute if score #dialog Dialog matches 90..190 run scoreboard players set @e[tag=luigi,tag=same_room,scores={AnimationProgress=30..}] AnimationProgress 29
execute if score #dialog Dialog matches 100 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"haunt"}
execute if score #dialog Dialog matches 106 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"726.8 19.4 26.8 12 -12"}
execute if score #dialog Dialog matches 106..150 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~0.0066 19.4 ~-0.0266 ~-0.188 ~0.222"}
execute if score #dialog Dialog matches 151..160 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"727.1 19.4 25.6 3.5 -2"}
execute if score #dialog Dialog matches 161..180 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"727.1 19.4 25.6 ~0.825 ~-1"}
execute if score #dialog Dialog matches 181..185 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"727.1 19.4 25.6 20 -22"}
execute if score #dialog Dialog matches 196..220 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"727.1 19.4 25.6 ~1.36 ~0.72"}
execute if score #dialog Dialog matches 221..239 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"727.1 19.4 25.6 54 -4"}
execute if score #dialog Dialog matches 240 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"720 21 22 -22 5"}
execute if score #dialog Dialog matches 241..280 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~-0.025 ~0.00125 22 ~0.4 ~0.75"}
execute if score #dialog Dialog matches 281..284 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"719 21.5 22 -6 35"}
execute if score #dialog Dialog matches 285 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"722 22 30.0 80 15"}
execute if score #dialog Dialog matches 286..360 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"722 22 30.0 ~-0.714 ~0.0571"}
execute if score #dialog Dialog matches 361 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"727 19.3 31.7 50 -5"}
execute if score #dialog Dialog matches 361..380 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"727 19.3 ~-0.025 50 ~0.25"}
execute if score #dialog Dialog matches 381 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"727 19.3 31.3 50 0"}
execute if score #dialog Dialog matches 381..420 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"727 19.3 ~-0.0875 ~1.375 ~-0.075"}
execute if score #dialog Dialog matches 421..440 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"727 19.3 27.8 105 -3"}
execute if score #dialog Dialog matches 441..479 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"727 19.3 27.8 ~0.975 ~0.05"}
execute if score #dialog Dialog matches 480..539 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"723.0 19.5 26 90 -10"}
execute if score #dialog Dialog matches 540..545 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"723.0 20 21 -28.5 5"}
execute if score #dialog Dialog matches 546..560 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~0.033 ~ 21 ~-0.22 ~0.33"}
execute if score #dialog Dialog matches 561..620 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~0.025 ~ ~0.066 ~-0.22 ~0.33"}
execute if score #dialog Dialog matches 546..620 run scoreboard players operation #dialog2 Dialog = #dialog Dialog
execute if score #dialog Dialog matches 546..620 run scoreboard players operation #dialog2 Dialog %= #8 Constants
execute if score #dialog Dialog matches 546..620 if score #dialog2 Dialog matches 0..2 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~0.025 ~"}
execute if score #dialog Dialog matches 546..620 if score #dialog2 Dialog matches 3..4 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~-0.025 ~"}
execute if score #dialog Dialog matches 546..620 run scoreboard players reset #dialog2 Dialog
execute if score #dialog Dialog matches 621..740 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"725.0 20 25 -45 30"}
execute if score #dialog Dialog matches 741..960 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"723.0 20 26.0 -100 7"}
execute if score #dialog Dialog matches 961 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"724.0 20 30.0 13 -7"}
execute if score #dialog Dialog matches 961..1160 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~-0.0175 20 ~-0.0175 ~0.335 ~-0.015"}
execute if score #dialog Dialog matches 1161..1300 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"720 20 26 80 -10"}
execute if score #dialog Dialog matches 1301.. as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"727.75 20 25.5 80 10"}
execute if score #dialog Dialog matches 100..149 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ^ ^ ^0.0266 ~ ~
execute if score #dialog Dialog matches 120..149 as @e[tag=luigi,tag=walking_player,limit=1] at @s positioned ^ ^ ^-0.0266 run function luigis_mansion:entities/luigi/animation/scare/bash_force_move
execute if score #dialog Dialog matches 150..158 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ~ ~0.1 ~
execute if score #dialog Dialog matches 98 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ facing 718 20 31
execute if score #dialog Dialog matches 98 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"walk"}
execute if score #dialog Dialog matches 99..129 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ^ ^ ^0.13
execute if score #dialog Dialog matches 130 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ facing 722 20 29
execute if score #dialog Dialog matches 131..150 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ^ ^ ^0.125
execute if score #dialog Dialog matches 150 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"vacuum"}
execute if score #dialog Dialog matches 150 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.poltergust set value {id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":{flags:[0b],strings:["nozzle"]},"minecraft:item_model":"e3_demo:poltergust_500","minecraft:custom_data":{model_data:{body_right:{components:{"minecraft:custom_model_data":{flags:[0b],strings:["body"]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[1b],strings:["body"]}}}}}},body_left:{components:{"minecraft:custom_model_data":{flags:[1b],strings:["body"]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[0b],strings:["body"]}}}}}},body_sat_on_right:{components:{"minecraft:custom_model_data":{flags:[0b],strings:["body_sat_on"]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[1b],strings:["body_sat_on"]}}}}}},body_sat_on_left:{components:{"minecraft:custom_model_data":{flags:[1b],strings:["body_sat_on"]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[0b],strings:["body_sat_on"]}}}}}},body_idle_right:{components:{"minecraft:custom_model_data":{flags:[0b],strings:["body_idle"]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[1b],strings:["body_idle"]}}}}}},body_idle_left:{components:{"minecraft:custom_model_data":{flags:[1b],strings:["body_idle"]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[0b],strings:["body_idle"]}}}}}}}}}}
execute if score #dialog Dialog matches 150..459 at @e[tag=e_gadd,tag=same_room,limit=1] positioned ~ ~0.25 ~ positioned ^ ^ ^0.5 as @e[tag=ghost,tag=same_room,limit=1] facing entity @s feet run function luigis_mansion:items/poltergust_3000/vacuuming/e_gadd
execute if score #dialog Dialog matches 150 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"hurt"}
execute if score #dialog Dialog matches 150 run tag @e[tag=luigi,tag=walking_player,limit=1] remove bash_no_move
execute if score #dialog Dialog matches 190 as @e[tag=luigi,tag=walking_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"722.0 20 21 0 0"}
execute if score #dialog Dialog matches 150 at @e[tag=ghost,tag=same_room,limit=1] run playsound e3_demo:entity.ghost.hurt hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 150 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"e3_demo:entity.ghost",color:"green"},{type:"translatable",translate:"e3_demo:dialog.meet_e_gadd.2"}]}
execute if score #dialog Dialog matches 190 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 253 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.dragged neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 240 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"flee"}
execute if score #dialog Dialog matches 240 as @e[tag=ghost,tag=same_room,limit=1] at @s run playsound e3_demo:entity.ghost.cutscene_flee hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 240 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ facing 720 21 26
execute if score #dialog Dialog matches 241..270 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ^ ^ ^0.3
execute if score #dialog Dialog matches 271 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ facing 716 21 32
execute if score #dialog Dialog matches 260 as @e[tag=ghost,tag=same_room,limit=1] at @s run playsound e3_demo:entity.ghost.cutscene_flee hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 272..291 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ^ ^ ^0.25
execute if score #dialog Dialog matches 292 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ facing 720 21 35
execute if score #dialog Dialog matches 293..312 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ^ ^ ^0.25
execute if score #dialog Dialog matches 313 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ facing 723 21 35
execute if score #dialog Dialog matches 314..343 as @e[tag=ghost,tag=same_room,limit=1] at @s facing 723 21 35 run teleport @s ^ ^ ^0.1
execute if score #dialog Dialog matches 330 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"pull_e_gadd"}
execute if score #dialog Dialog matches 330..332 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ~ ~-0.45 ~ ~60 ~
execute if score #dialog Dialog matches 330 as @e[tag=ghost,tag=same_room,limit=1] at @s run playsound e3_demo:entity.ghost.cutscene_pull hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 350 as @e[tag=ghost,tag=same_room,limit=1] at @s run playsound e3_demo:entity.ghost.cutscene_pull hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 344..363 as @e[tag=ghost,tag=same_room,limit=1] at @s facing 725 20.2 32 rotated ~ 0 run teleport @s ^ ^ ^0.2
execute if score #dialog Dialog matches 364..393 as @e[tag=ghost,tag=same_room,limit=1] at @s facing 723 20.2 26 rotated ~ 0 run teleport @s ^ ^ ^0.2
execute if score #dialog Dialog matches 394..452 as @e[tag=ghost,tag=same_room,limit=1] at @s facing 718 20.2 26 rotated ~ 0 run teleport @s ^ ^ ^0.1
execute if score #dialog Dialog matches 330..440 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ facing entity @e[tag=e_gadd,tag=same_room,limit=1] feet
execute if score #dialog Dialog matches 400 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"punch_wind_up"}
execute if score #dialog Dialog matches 440 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"punch"}
execute if score #dialog Dialog matches 440 at @e[tag=ghost,tag=same_room,limit=1] run playsound luigis_mansion:entity.ghost.punch hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 440 at @e[tag=ghost,tag=same_room,limit=1] run playsound e3_demo:entity.ghost.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 460 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"laugh"}
execute if score #dialog Dialog matches 460 at @e[tag=ghost,tag=same_room,limit=1] run playsound e3_demo:entity.ghost.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 500 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"vanish"}
execute if score #dialog Dialog matches 500 at @e[tag=ghost,tag=same_room,limit=1] run playsound e3_demo:entity.ghost.disappear hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 540 run tag @e[tag=ghost,tag=same_room,limit=1] add remove_from_existence
execute if score #dialog Dialog matches 540 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/cold_room_idle
execute if score #dialog Dialog matches 278 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"walk_backwards"}
execute if score #dialog Dialog matches 251..266 as @e[tag=e_gadd,tag=same_room,limit=1] at @s facing 722 20 27 rotated ~ 0 run teleport @s ^ ^ ^0.22
execute if score #dialog Dialog matches 266..285 as @e[tag=e_gadd,tag=same_room,limit=1] at @s facing 718 20 26 rotated ~ 0 run teleport @s ^ ^ ^0.21
execute if score #dialog Dialog matches 286..290 as @e[tag=e_gadd,tag=same_room,limit=1] at @s facing 716 20 27 rotated ~ 0 run teleport @s ^ ^ ^0.4
execute if score #dialog Dialog matches 301..305 as @e[tag=e_gadd,tag=same_room,limit=1] at @s rotated 0 0 run teleport @s ^ ^ ^0.21
execute if score #dialog Dialog matches 315..320 as @e[tag=e_gadd,tag=same_room,limit=1] at @s rotated 0 0 run teleport @s ^ ^ ^0.21
execute if score #dialog Dialog matches 335..340 as @e[tag=e_gadd,tag=same_room,limit=1] at @s rotated 0 0 run teleport @s ^ ^ ^0.21
execute if score #dialog Dialog matches 340 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"dragged"}
execute if score #dialog Dialog matches 341..360 as @e[tag=e_gadd,tag=same_room,limit=1] at @s facing 720 20 35 rotated ~ 0 run teleport @s ^ ^ ^0.315
execute if score #dialog Dialog matches 361..370 as @e[tag=e_gadd,tag=same_room,limit=1] at @s facing 725 20 34 rotated ~ 0 run teleport @s ^ ^ ^0.51
execute if score #dialog Dialog matches 371..410 as @e[tag=e_gadd,tag=same_room,limit=1] at @s facing 723 20 26 rotated ~ 0 run teleport @s ^ ^ ^0.205
execute if score #dialog Dialog matches 411..440 as @e[tag=e_gadd,tag=same_room,limit=1] at @s facing 719 20 26 rotated ~ 0 run teleport @s ^ ^ ^0.133
execute if score #dialog Dialog matches 440 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"hit"}
execute if score #dialog Dialog matches 440 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.hurt neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 440..470 as @e[tag=e_gadd,tag=same_room,limit=1] at @s facing 726 20 26 rotated ~ 0 run teleport @s ^ ^ ^0.233
execute if score #dialog Dialog matches 150..440 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ facing entity @e[tag=ghost,tag=same_room,limit=1] feet
execute if score #dialog Dialog matches 470 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"sit"}
execute if score #dialog Dialog matches 553 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.complain neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 620 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"e3_demo:dialog.meet_e_gadd.3"}]}
execute if score #dialog Dialog matches 620 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.ehdeedee neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 650 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"sit_look_up"}
execute if score #dialog Dialog matches 650 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"e3_demo:dialog.meet_e_gadd.4"}]}
execute if score #dialog Dialog matches 650 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"e3_demo:dialog.meet_e_gadd.4.more"}]}
execute if score #dialog Dialog matches 650 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.hoo_hoo_jeemee_jeemee_kehkeh neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 740 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 740 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ 170 0
execute if score #dialog Dialog matches 740 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"get_up"}
execute if score #dialog Dialog matches 760 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"explain_1_hand"}
execute if score #dialog Dialog matches 750 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"e3_demo:dialog.meet_e_gadd.5",with:[{type:"selector",selector:"@a[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 750 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"e3_demo:dialog.meet_e_gadd.5.more"}]}
execute if score #dialog Dialog matches 750 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.gay_roon_ehdeedee_odoh_tahmentahkeh neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 855 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"e3_demo:dialog.meet_e_gadd.6"}]}
execute if score #dialog Dialog matches 855 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.ohyah_ohyahmah_hey_hey_oui neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 855..874 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ ~-3.5 0
execute if score #dialog Dialog matches 955 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"e3_demo:dialog.meet_e_gadd.7"}]}
execute if score #dialog Dialog matches 955 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.keeyehroo_suu_suku_suku neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 1055 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"e3_demo:dialog.meet_e_gadd.8"}]}
execute if score #dialog Dialog matches 1055 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.oui_oydohroh_tahmentahkeh neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 1200 run data modify storage luigis_mansion:data entity set value {room:3,no_ai:1b,tags:["same_room","visible","ghost_1","no_dialog_freeze","remove_after_dialog"],animation:{namespace:"luigis_mansion",id:"appear/beta"}}
execute if score #dialog Dialog matches 1200 positioned 718 20 29 run function e3_demo:spawn_entities/ghost/ghost/white
execute if score #dialog Dialog matches 1200 run playsound e3_demo:entity.ghost.spawn_beta hostile @a[tag=same_room] 718 20 29 1
execute if score #dialog Dialog matches 1200 as @e[tag=ghost_1,tag=same_room] at @s facing 727.75 20.00 25.50 rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if score #dialog Dialog matches 1200 run data modify storage luigis_mansion:data entity set value {room:3,no_ai:1b,tags:["same_room","visible","ghost_2","no_dialog_freeze","remove_after_dialog"],animation:{namespace:"luigis_mansion",id:"appear/beta"}}
execute if score #dialog Dialog matches 1200 positioned 718 20 26 run function e3_demo:spawn_entities/ghost/ghost/white
execute if score #dialog Dialog matches 1215 run playsound e3_demo:entity.ghost.spawn_beta hostile @a[tag=same_room] 718 20 26 1
execute if score #dialog Dialog matches 1200 as @e[tag=ghost_2,tag=same_room] at @s facing 727.75 20.00 25.50 rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if score #dialog Dialog matches 1215 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"e3_demo:entity.ghost",color:"green"},{type:"translatable",translate:"e3_demo:dialog.meet_e_gadd.9"}]}
execute if score #dialog Dialog matches 1220 run data modify storage luigis_mansion:data entity set value {room:3,no_ai:1b,tags:["same_room","visible","ghost_3","no_dialog_freeze","remove_after_dialog"],animation:{namespace:"luigis_mansion",id:"appear/beta"}}
execute if score #dialog Dialog matches 1220 positioned 720 20 27 run function e3_demo:spawn_entities/ghost/ghost/white
execute if score #dialog Dialog matches 1230 run playsound e3_demo:entity.ghost.spawn_beta hostile @a[tag=same_room] 720 20 27 1
execute if score #dialog Dialog matches 1220 as @e[tag=ghost_3,tag=same_room] at @s facing 727.75 20.00 25.50 rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if score #dialog Dialog matches 1240 run data modify entity @e[tag=ghost_1,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"haunt"}
execute if score #dialog Dialog matches 1240 run data modify entity @e[tag=ghost_2,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"haunt"}
execute if score #dialog Dialog matches 1260 run data modify entity @e[tag=ghost_3,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"haunt"}
execute if score #dialog Dialog matches 1260 as @e[tag=ghost,tag=same_room] at @s run playsound e3_demo:entity.ghost.ambient hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 1270 as @e[tag=ghost,tag=same_room] at @s run playsound e3_demo:entity.ghost.ambient hostile @a[tag=same_room] ~ ~ ~ 1 1.1
execute if score #dialog Dialog matches 1300 as @e[tag=ghost,tag=same_room] at @s run playsound e3_demo:entity.ghost.ambient hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 1325 as @e[tag=ghost,tag=same_room] at @s run playsound e3_demo:entity.ghost.ambient hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 1335 as @e[tag=ghost,tag=same_room] at @s run playsound e3_demo:entity.ghost.ambient hostile @a[tag=same_room] ~ ~ ~ 1 1.1
execute if score #dialog Dialog matches 1260 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"e3_demo:dialog.meet_e_gadd.10"}]}
execute if score #dialog Dialog matches 1260 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.tatta_tatta neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 1260..1300 as @e[tag=ghost,tag=same_room] at @s facing 727.75 20.00 25.50 run teleport @s ^ ^ ^0.025
execute if score #dialog Dialog matches 1301..1360 as @e[tag=ghost,tag=same_room] at @s facing 727.75 20.00 25.50 run teleport @s ^ ^ ^0.125
execute if score #dialog Dialog matches 1320 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"e3_demo:dialog.meet_e_gadd.11",with:[{type:"selector",selector:"@a[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 1320 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"e3_demo:dialog.meet_e_gadd.11.more"}]}
execute if score #dialog Dialog matches 1320 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.tatta_tatta_tatta neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 1341 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"walk"}
execute if score #dialog Dialog matches 1341..1350 as @e[tag=e_gadd,tag=same_room] at @s run teleport @s ~ ~ ~ ~17 0
execute if score #dialog Dialog matches 1341..1360 as @e[tag=e_gadd,tag=same_room] at @s rotated -90 0 run teleport @s ^ ^ ^0.1
execute if score #dialog Dialog matches 1341..1350 as @e[tag=luigi,tag=walking_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~ ~-12 0"}
execute if score #dialog Dialog matches 1341..1360 as @e[tag=luigi,tag=walking_player,limit=1] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated -90 0",teleport:"^ ^ ^0.1"}
execute if score #dialog Dialog matches 1341..1360 run tag @a[tag=walking_player,limit=1] add dialog_walking
execute if score #dialog Dialog matches 1360 run tag @e[tag=same_room,tag=remove_after_dialog] remove no_dialog_freeze
execute if score #dialog Dialog matches 1360 run tag @e[tag=same_room,tag=remove_after_dialog] add freeze_animation
execute if score #dialog Dialog matches 1400 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 1400 run tag @e[tag=same_room,tag=remove_after_dialog] add remove_from_existence
execute if score #dialog Dialog matches 1400 as @a[scores={MusicType=-1}] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 1400 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 1400 run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"the_mansion"},room:-1,progress:-1}
execute if score #dialog Dialog matches 1400 as @a[tag=same_room] run function luigis_mansion:room/underground_lab/warp_to
execute if score #dialog Dialog matches 1400 run scoreboard players set #dialog Dialog -1
tag @e[tag=luigi,tag=walking_player] remove walking_player