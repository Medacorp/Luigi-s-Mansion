#Single escape = all escape
execute if entity @e[tag=ghost,tag=same_room,tag=vanish,limit=1] as @e[tag=ghost,tag=same_room,tag=!dying] run data modify entity @s data.attacked_by set value []
execute if entity @e[tag=ghost,tag=same_room,tag=vanish,limit=1] run scoreboard players reset @e[tag=ghost,tag=same_room,tag=!dying] HurtTime
execute if entity @e[tag=ghost,tag=same_room,tag=vanish,limit=1] run scoreboard players set @e[tag=ghost,tag=same_room,tag=!vanish] ActionTime 0
execute if entity @e[tag=ghost,tag=same_room,tag=vanish,limit=1] run scoreboard players set @e[tag=ghost,tag=same_room,tag=!dying] VulnerableTime 0
execute if entity @e[tag=ghost,tag=same_room,tag=vanish,limit=1] run scoreboard players set @e[tag=ghost,tag=same_room,tag=!dying] StunTime 0
execute if entity @e[tag=ghost,tag=same_room,tag=vanish,limit=1] run tag @e[tag=ghost,tag=same_room,tag=!dying] add vanish
execute if entity @e[tag=ghost,tag=same_room,tag=vanish,limit=1] run tag @e[tag=ghost,tag=same_room] remove stunable
execute if entity @e[tag=ghost,tag=same_room,tag=vanish,limit=1] run tag @a[tag=same_room] remove grabbed
#Go back to previous wave if failed
execute if entity @e[tag=ghost,tag=same_room,tag=vanish,limit=1] unless score #training_room ActionTime matches 1 run scoreboard players remove #training_room Wave 2
execute if entity @e[tag=ghost,tag=same_room,tag=vanish,limit=1] unless score #training_room ActionTime matches 1 if score #training_room Wave matches ..-1 run scoreboard players set #training_room Wave 0
execute if entity @e[tag=ghost,tag=same_room,tag=vanish,limit=1] unless score #training_room ActionTime matches 1 run scoreboard players set #training_room ActionTime 1
execute if score #dialog Dialog matches 212.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 10..211 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 8..9 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 7 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 6 if score #training_room Wave matches 21 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 6 if entity @a[scores={Health=..0},tag=same_room] run scoreboard players set #dialog Dialog 211
execute if score #dialog Dialog matches 5 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 2..4 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..6 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 7
execute if score #dialog Dialog matches 8..49 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 50
execute if score #dialog Dialog matches 51..129 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 130
execute if score #dialog Dialog matches 131..209 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 210
execute if score #dialog Dialog matches ..213 unless score #dialog Dialog matches 5..6 unless score #dialog Dialog matches 10..210 as @a[tag=same_room,tag=!spectator] unless entity @s[tag=dialog_menu,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 5..6 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 10..210 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 214 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

tag @a[tag=same_room] add prevent_item_lock
tag @e[tag=same_room] remove freeze_animation
tag @e[tag=same_room] remove no_ai
execute unless score #dialog Dialog matches 5..210 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:items/game_boy_horror/turn_screen_to_forced_value {value:"call",flags:[],floats:[0f,0f,0f,0f],tracker:[]}
execute if score #dialog Dialog matches 5..6 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:items/game_boy_horror/turn_screen_to_forced_value {value:"call",flags:[],floats:[1f,0f,0f,0f],tracker:[]}
execute if score #dialog Dialog matches 7..210 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:items/game_boy_horror/turn_screen_to_forced_value {value:"call",flags:[],floats:[6f,0f,0f,0f],tracker:[]}
execute if score #dialog Dialog matches 1..4 run scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute if score #dialog Dialog matches 1..4 as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1..4 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/game_boy_horror
execute if score #dialog Dialog matches 1..6 as @a[tag=same_room] run function luigis_mansion:other/music/set/training
execute if score #dialog Dialog matches 1 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.oui_oydohroh_tahmentahkeh2
execute if score #dialog Dialog matches 1 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"extensive_training:dialog.speedrun.1",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 1 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"extensive_training:dialog.speedrun.1.more"}]}
execute if score #dialog Dialog matches 1 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohyahmah_luigi_ck_ck neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 3 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"extensive_training:dialog.speedrun.2"}]}
execute if score #dialog Dialog matches 3 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"extensive_training:dialog.speedrun.2.more"}]}
execute if score #dialog Dialog matches 3 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hoo_hoo_jeemee_jeemee_kehkeh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 4 run scoreboard players set #training_room Selected 3
execute if score #dialog Dialog matches 4 store result score #temp Time run data get storage extensive_training:data current_state.speedrun_record
execute if score #dialog Dialog matches 4 unless score #temp Time matches -1 run function extensive_training:room/training_room/convert_time
execute if score #dialog Dialog matches 4 unless data storage extensive_training:data current_state{speedrun_record:-1} if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"extensive_training:dialog.speedrun.3",with:[{type:"score",score:{name:"#temp6",objective:"Time"}},{type:"score",score:{name:"#temp5",objective:"Time"}},{type:"score",score:{name:"#temp4",objective:"Time"}},{type:"score",score:{name:"#temp3",objective:"Time"}},{type:"score",score:{name:"#temp2",objective:"Time"}},{type:"score",score:{name:"#temp",objective:"Time"}}]}]}
execute if score #dialog Dialog matches 4 unless data storage extensive_training:data current_state{speedrun_record:-1} if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"extensive_training:dialog.speedrun.3.more",with:[{type:"score",score:{name:"#temp6",objective:"Time"}},{type:"score",score:{name:"#temp5",objective:"Time"}},{type:"score",score:{name:"#temp4",objective:"Time"}},{type:"score",score:{name:"#temp3",objective:"Time"}},{type:"score",score:{name:"#temp2",objective:"Time"}},{type:"score",score:{name:"#temp",objective:"Time"}}]}]}
execute if score #dialog Dialog matches 4 unless data storage extensive_training:data current_state{speedrun_record:-1} if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.yahmum_bah_poheh_hap_poh neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 4 if data storage extensive_training:data current_state{speedrun_record:-1} if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"extensive_training:dialog.speedrun.3.alt"}]}
execute if score #dialog Dialog matches 4 if data storage extensive_training:data current_state{speedrun_record:-1} if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"extensive_training:dialog.speedrun.3.alt.more"}]}
execute if score #dialog Dialog matches 4 if data storage extensive_training:data current_state{speedrun_record:-1} if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.gay_roon_ehdeedee_odoh_tahmentahkeh neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 4 run scoreboard players reset #temp Time
execute if score #dialog Dialog matches 4 run scoreboard players reset #temp2 Time
execute if score #dialog Dialog matches 4 run scoreboard players reset #temp3 Time
execute if score #dialog Dialog matches 4 run scoreboard players reset #temp4 Time
execute if score #dialog Dialog matches 4 run scoreboard players reset #temp5 Time
execute if score #dialog Dialog matches 4 run scoreboard players reset #temp6 Time

execute if score #dialog Dialog matches 5 run function luigis_mansion:room/training_room/turn_lights/off
execute if score #dialog Dialog matches 5 run scoreboard players set #training_room TrainingRoomScore 0
execute if score #dialog Dialog matches 5 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none

execute if score #dialog Dialog matches 6 unless entity @e[tag=ghost,tag=same_room,limit=1] unless entity @a[x=795.0,y=77,z=-8.0,distance=..5,limit=1] run particle minecraft:crit 795.0 77 -8.0 2.5 2.5 2.5 0 10 force @a[tag=same_room]
execute if score #dialog Dialog matches 6 unless entity @e[tag=ghost,tag=same_room,limit=1] if entity @a[x=795.0,y=77,z=-8.0,distance=..5,limit=1] run function extensive_training:room/training_room/spawn_wave/speedrun
execute if score #dialog Dialog matches 6 if entity @e[tag=ghost,tag=same_room,limit=1] run scoreboard players add #training_room Time 1

execute if score #dialog Dialog matches 7..49 run scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute if score #dialog Dialog matches 7..49 as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 7..49 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 7 run function luigis_mansion:room/training_room/turn_lights/on
execute if score #dialog Dialog matches 7..49 as @a[tag=same_room] run function luigis_mansion:other/music/set/training_end
execute if score #dialog Dialog matches 7 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"extensive_training:dialog.speedrun.4"}]}
execute if score #dialog Dialog matches 7 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"extensive_training:dialog.speedrun.4.more"}]}
execute if score #dialog Dialog matches 7 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi_odoh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 9 if score #players Totals matches 1 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"extensive_training:dialog.speedrun.5"}]}
execute if score #dialog Dialog matches 9 if score #players Totals matches 2.. if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"extensive_training:dialog.speedrun.5.more"}]}
execute if score #dialog Dialog matches 9 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oui_oomahkah neutral @s ~ ~ ~ 1

#from 10 start ticking automatically

execute if score #dialog Dialog matches 50 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 50..209 as @a[tag=same_room] run function luigis_mansion:other/music/set/training_results
scoreboard players operation #training_room Selected < #global_difficulty Selected
execute if score #dialog Dialog matches 50 if score #training_room Selected matches 3 run advancement grant @a[tag=same_room] only extensive_training:extensive_training/mastermind
execute if score #dialog Dialog matches 50 run scoreboard players set @a[tag=same_room] Health 100
execute if score #dialog Dialog matches 50 run scoreboard players operation #temp Time = #training_room Time
execute if score #dialog Dialog matches 50 run function extensive_training:room/training_room/convert_time
execute if score #dialog Dialog matches 50 run summon minecraft:firework_rocket 788 80 -8 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;14862336],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 55 run summon minecraft:firework_rocket 788 80 -4 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;14862336],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 60 if score #training_room Time matches ..24000 run summon minecraft:firework_rocket 788 80 -12 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;14862336],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 65 if score #training_room Time matches ..18000 run summon minecraft:firework_rocket 788 81 -10 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;14853494],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 70 if score #training_room Time matches ..12000 run summon minecraft:firework_rocket 788 81 -6 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;14853494],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 50 if score #training_room Time matches ..24000 run function extensive_training:selection_menu/gallery_trophy/complete/task_7
execute if score #dialog Dialog matches 50 if score #training_room Time matches ..18000 run function extensive_training:selection_menu/gallery_trophy/complete/task_8
execute if score #dialog Dialog matches 50 if score #training_room Time matches ..12000 run function extensive_training:selection_menu/gallery_trophy/complete/task_9
execute if score #dialog Dialog matches 50 if score #training_room Time matches 24001.. if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"extensive_training:dialog.speedrun.6.slow",with:[{type:"score",score:{name:"#temp6",objective:"Time"}},{type:"score",score:{name:"#temp5",objective:"Time"}},{type:"score",score:{name:"#temp4",objective:"Time"}},{type:"score",score:{name:"#temp3",objective:"Time"}},{type:"score",score:{name:"#temp2",objective:"Time"}},{type:"score",score:{name:"#temp",objective:"Time"}}]}]}
execute if score #dialog Dialog matches 50 if score #training_room Time matches 24001.. if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"extensive_training:dialog.speedrun.6.slow.more",with:[{type:"score",score:{name:"#temp6",objective:"Time"}},{type:"score",score:{name:"#temp5",objective:"Time"}},{type:"score",score:{name:"#temp4",objective:"Time"}},{type:"score",score:{name:"#temp3",objective:"Time"}},{type:"score",score:{name:"#temp2",objective:"Time"}},{type:"score",score:{name:"#temp",objective:"Time"}}]}]}
execute if score #dialog Dialog matches 50 if score #training_room Time matches 24001.. as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mm_oydohroh neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 50 if score #training_room Time matches 18001..24000 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"extensive_training:dialog.speedrun.6.medium",with:[{type:"score",score:{name:"#temp6",objective:"Time"}},{type:"score",score:{name:"#temp5",objective:"Time"}},{type:"score",score:{name:"#temp4",objective:"Time"}},{type:"score",score:{name:"#temp3",objective:"Time"}},{type:"score",score:{name:"#temp2",objective:"Time"}},{type:"score",score:{name:"#temp",objective:"Time"}}]}]}
execute if score #dialog Dialog matches 50 if score #training_room Time matches 18001..24000 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"extensive_training:dialog.speedrun.6.medium.more",with:[{type:"score",score:{name:"#temp6",objective:"Time"}},{type:"score",score:{name:"#temp5",objective:"Time"}},{type:"score",score:{name:"#temp4",objective:"Time"}},{type:"score",score:{name:"#temp3",objective:"Time"}},{type:"score",score:{name:"#temp2",objective:"Time"}},{type:"score",score:{name:"#temp",objective:"Time"}}]}]}
execute if score #dialog Dialog matches 50 if score #training_room Time matches 18001..24000 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.tatta_tatta neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 50 if score #training_room Time matches 12001..18000 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"extensive_training:dialog.speedrun.6.fast",with:[{type:"score",score:{name:"#temp6",objective:"Time"}},{type:"score",score:{name:"#temp5",objective:"Time"}},{type:"score",score:{name:"#temp4",objective:"Time"}},{type:"score",score:{name:"#temp3",objective:"Time"}},{type:"score",score:{name:"#temp2",objective:"Time"}},{type:"score",score:{name:"#temp",objective:"Time"}}]}]}
execute if score #dialog Dialog matches 50 if score #training_room Time matches 12001..18000 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"extensive_training:dialog.speedrun.6.fast.more",with:[{type:"score",score:{name:"#temp6",objective:"Time"}},{type:"score",score:{name:"#temp5",objective:"Time"}},{type:"score",score:{name:"#temp4",objective:"Time"}},{type:"score",score:{name:"#temp3",objective:"Time"}},{type:"score",score:{name:"#temp2",objective:"Time"}},{type:"score",score:{name:"#temp",objective:"Time"}}]}]}
execute if score #dialog Dialog matches 50 if score #training_room Time matches 12001..18000 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.tatta_tatta_tatta neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 50 if score #training_room Time matches ..12000 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"extensive_training:dialog.speedrun.6.holy_cow",with:[{type:"score",score:{name:"#temp6",objective:"Time"}},{type:"score",score:{name:"#temp5",objective:"Time"}},{type:"score",score:{name:"#temp4",objective:"Time"}},{type:"score",score:{name:"#temp3",objective:"Time"}},{type:"score",score:{name:"#temp2",objective:"Time"}},{type:"score",score:{name:"#temp",objective:"Time"}}]}]}
execute if score #dialog Dialog matches 50 if score #training_room Time matches ..12000 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"extensive_training:dialog.speedrun.6.holy_cow.more",with:[{type:"score",score:{name:"#temp6",objective:"Time"}},{type:"score",score:{name:"#temp5",objective:"Time"}},{type:"score",score:{name:"#temp4",objective:"Time"}},{type:"score",score:{name:"#temp3",objective:"Time"}},{type:"score",score:{name:"#temp2",objective:"Time"}},{type:"score",score:{name:"#temp",objective:"Time"}}]}]}
execute if score #dialog Dialog matches 50 if score #training_room Time matches ..12000 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.shortlaugh_oomahkah_bohh_squirtbottlelaugh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 130 store result score #temp Time run data get storage extensive_training:data current_state.speedrun_record
execute if score #dialog Dialog matches 130 if score #temp Time matches -1 run scoreboard players set #temp Time 2147483647
execute if score #dialog Dialog matches 130 if score #temp Time > #training_room Time run data modify storage luigis_mansion:data dialogs[0].new_record set value 1b
execute if score #dialog Dialog matches 130 if data storage luigis_mansion:data dialogs[0].new_record run summon minecraft:firework_rocket 788 80 -8 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;2993378],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 135 if data storage luigis_mansion:data dialogs[0].new_record run summon minecraft:firework_rocket 788 80 -4 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;2993378],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 140 if data storage luigis_mansion:data dialogs[0].new_record run summon minecraft:firework_rocket 788 80 -12 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;2993378],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 145 if data storage luigis_mansion:data dialogs[0].new_record run summon minecraft:firework_rocket 788 81 -10 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;2993378],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 150 if data storage luigis_mansion:data dialogs[0].new_record run summon minecraft:firework_rocket 788 81 -6 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;2993378],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 130 if data storage luigis_mansion:data dialogs[0].new_record run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"extensive_training:dialog.speedrun.yes"}]}
execute if score #dialog Dialog matches 130 if data storage luigis_mansion:data dialogs[0].new_record as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.longlaugh neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 130 if data storage luigis_mansion:data dialogs[0].new_record store result storage extensive_training:data current_state.speedrun_record int 1 run scoreboard players get #training_room Time
execute if score #dialog Dialog matches 130 unless data storage luigis_mansion:data dialogs[0].new_record run function extensive_training:room/training_room/convert_time
execute if score #dialog Dialog matches 130 unless data storage luigis_mansion:data dialogs[0].new_record if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"extensive_training:dialog.speedrun.no",with:[{type:"score",score:{name:"#temp6",objective:"Time"}},{type:"score",score:{name:"#temp5",objective:"Time"}},{type:"score",score:{name:"#temp4",objective:"Time"}},{type:"score",score:{name:"#temp3",objective:"Time"}},{type:"score",score:{name:"#temp2",objective:"Time"}},{type:"score",score:{name:"#temp",objective:"Time"}}]}]}
execute if score #dialog Dialog matches 130 unless data storage luigis_mansion:data dialogs[0].new_record if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"extensive_training:dialog.speedrun.no.more",with:[{type:"score",score:{name:"#temp6",objective:"Time"}},{type:"score",score:{name:"#temp5",objective:"Time"}},{type:"score",score:{name:"#temp4",objective:"Time"}},{type:"score",score:{name:"#temp3",objective:"Time"}},{type:"score",score:{name:"#temp2",objective:"Time"}},{type:"score",score:{name:"#temp",objective:"Time"}}]}]}
execute if score #dialog Dialog matches 130 unless data storage luigis_mansion:data dialogs[0].new_record as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_hey_hey_suu_dehkooroo_hah neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 130 run scoreboard players reset #temp Time
execute if score #dialog Dialog matches 130 run scoreboard players reset #temp2 Time
execute if score #dialog Dialog matches 130 run scoreboard players reset #temp3 Time
execute if score #dialog Dialog matches 130 run scoreboard players reset #temp4 Time
execute if score #dialog Dialog matches 130 run scoreboard players reset #temp5 Time
execute if score #dialog Dialog matches 130 run scoreboard players reset #temp6 Time

execute if score #dialog Dialog matches 210 as @a[tag=same_room] run function luigis_mansion:room/underground_lab/warp_to
execute if score #dialog Dialog matches 210 run scoreboard players set #dialog Dialog -1

#Branch: Defeat
execute if score #dialog Dialog matches 211.. run scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute if score #dialog Dialog matches 211.. as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 211 run function luigis_mansion:room/training_room/turn_lights/on
execute if score #dialog Dialog matches 211..213 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/game_boy_horror
execute if score #dialog Dialog matches 211 run scoreboard players reset @a[tag=same_room] DeathTime
execute if score #dialog Dialog matches 211 run scoreboard players set @a[tag=same_room] Health 100
execute if score #dialog Dialog matches 211 run tag @a[tag=same_room] remove death_animation
execute if score #dialog Dialog matches 211 as @a[tag=same_room,tag=vacuuming_ghost] at @s run function luigis_mansion:entities/player/poltergust_breakage
execute if score #dialog Dialog matches 211 run scoreboard players set @e[tag=ghost,tag=same_room,tag=!vanish] ActionTime 0
execute if score #dialog Dialog matches 211 run tag @e[tag=ghost,tag=same_room,tag=!flee] add vanish
execute if score #dialog Dialog matches 211 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"extensive_training:dialog.speedrun.defeat.1"}]}
execute if score #dialog Dialog matches 211 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"extensive_training:dialog.speedrun.defeat.1.more"}]}
execute if score #dialog Dialog matches 211 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hmmm_nohjeebeedoggy_ohmoogah neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 213 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"extensive_training:dialog.speedrun.defeat.2"}]}
execute if score #dialog Dialog matches 213 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oh_tohmah_poheh_jeemee_jeemee neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 214 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 214 as @a[tag=same_room] run function luigis_mansion:room/underground_lab/warp_to
execute if score #dialog Dialog matches 214 run scoreboard players set #dialog Dialog -1