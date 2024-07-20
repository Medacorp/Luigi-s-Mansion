execute if entity @a[tag=capturing_ghost,limit=1] run tag @e[tag=same_room] add abort_dialog_tick
execute if entity @a[tag=capturing_ghost,limit=1] run return 0

execute if score #dialog Dialog matches 152..153 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 151 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 149 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 148 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 137..146 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 6
execute if score #dialog Dialog matches 137..146 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 136 if entity @a[tag=same_room,tag=select_dialog_branch_no,limit=1] run scoreboard players set #dialog Dialog 148
execute if score #dialog Dialog matches 136 if entity @a[tag=same_room,tag=select_dialog_branch_yes,limit=1] run scoreboard players set #dialog Dialog 137
execute if score #dialog Dialog matches 135 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 14..134 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 13 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 11..12 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 10 if score #training_room Wave matches 10.. unless entity @e[tag=ghost,tag=same_room,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 9 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 2..8 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..153 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 154
execute if score #dialog Dialog matches ..133 store result score #temp Time if entity @a[tag=same_room]
execute if score #dialog Dialog matches ..133 if score #temp Time matches 1 run scoreboard players set #dialog Dialog 151
scoreboard players reset #temp Time
execute if score #dialog Dialog matches ..153 unless score #dialog Dialog matches 9..11 unless score #dialog Dialog matches 14..134 unless score #dialog Dialog matches 136 unless score #dialog Dialog matches 150 as @a[tag=same_room,tag=!spectator] unless entity @s[tag=dialog_menu,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 136 as @a[tag=same_room,tag=!spectator,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function extensive_training:selection_menu/dialog/choice/training_room_another_round
execute if score #dialog Dialog matches 9..11 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 14..134 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 150 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 154 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

tag @a[tag=same_room] add prevent_item_lock
tag @e[tag=same_room] remove freeze_animation
tag @e[tag=same_room] remove no_ai
scoreboard players set @a[tag=same_room] ForceScreen 1
execute if score #dialog Dialog matches 1..8 run scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute if score #dialog Dialog matches 1..8 as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1..8 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/game_boy_horror
execute if score #dialog Dialog matches 1..11 as @a[tag=same_room] run function luigis_mansion:other/music/set/training
execute if score #dialog Dialog matches 1 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.oui_oydohroh_tahmentahkeh2
execute if score #dialog Dialog matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.1"}]}
execute if score #dialog Dialog matches 1 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.gay_roon_ehdeedee_odoh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 3 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.gay_roon_ehdeedee_odoh
execute if score #dialog Dialog matches 3 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.2"}]}
execute if score #dialog Dialog matches 3 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.bohh_squirtbottlelaugh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 4 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.bohh_squirtbottlelaugh
execute if score #dialog Dialog matches 4 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.3"}]}
execute if score #dialog Dialog matches 4 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mm_poheh_oyahmah_oydohroh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 5 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mm_poheh_oyahmah_oydohroh
execute if score #dialog Dialog matches 5 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.4"}]}
execute if score #dialog Dialog matches 5 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hap_poh_tatta_tatta neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 6 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.hap_poh_tatta_tatta
execute if score #dialog Dialog matches 6 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.5"}]}
execute if score #dialog Dialog matches 6 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hey_hey_nohjeebeedoggy_oomahkah_ooh_ooh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 7 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.hey_hey_nohjeebeedoggy_oomahkah_ooh_ooh
execute if score #dialog Dialog matches 7 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.seedapee_ohyah
execute if score #dialog Dialog matches 7 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.6"}]}
execute if score #dialog Dialog matches 7 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ehdeedee neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 8 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ehdeedee
execute if score #dialog Dialog matches 8 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.7"}]}
execute if score #dialog Dialog matches 8 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.yahmum_baah neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 9 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches 9 run function luigis_mansion:room/training_room/turn_lights/off
execute if score #dialog Dialog matches 9 run scoreboard players add @a[tag=same_room] TrainingRoomScore 0

execute if score #dialog Dialog matches 10 run tag @e[tag=ghost,tag=same_room,tag=hidden,tag=can_spawn,limit=1] add spawn
execute if score #dialog Dialog matches 10 unless entity @e[tag=ghost,tag=same_room,limit=1] run function extensive_training:room/training_room/spawn_wave/pvp
execute if score #dialog Dialog matches 10 store result score #temp Time if entity @a[tag=same_room]
execute if score #dialog Dialog matches 10 as @a[tag=same_room,scores={AnimationProgess=1..},tag=!idle,tag=!animation_may_move] unless entity @s[scores={TrainingRoomScore=0..}] run scoreboard players remove #temp2 Time 1
execute if score #dialog Dialog matches 10 run scoreboard players operation #temp Time -= #temp2 Time
execute if score #temp Time matches ..1 run scoreboard players set #dialog Dialog 12
execute as @a[scores={Health=..0},tag=same_room] run function extensive_training:dialog/play/training_room/pvp_defeat
execute if score #dialog Dialog matches 10..12 as @a[tag=same_room,tag=!spectator] unless entity @s[scores={TrainingRoomScore=0..}] run scoreboard players reset @s WarpTime
execute if score #dialog Dialog matches 10..12 as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] unless entity @s[scores={TrainingRoomScore=0..}] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 10 as @a[tag=same_room,scores={AnimationProgess=1..},tag=!idle,tag=!animation_may_move] unless entity @s[scores={TrainingRoomScore=0..}] run tag @s add spectator
execute if score #dialog Dialog matches 10 as @a[tag=same_room,scores={AnimationProgess=1..},tag=!idle,tag=!animation_may_move] unless entity @s[scores={TrainingRoomScore=0..}] run scoreboard players set @s Invulnerable 10
execute if score #dialog Dialog matches 11.. as @a[tag=same_room,scores={AnimationProgess=1..},tag=!idle,tag=!animation_may_move] unless entity @s[scores={TrainingRoomScore=0..}] run tag @s remove spectator

execute if score #dialog Dialog matches 11 run scoreboard players reset #training_room TrainingRoomScore
execute if score #dialog Dialog matches 11 run scoreboard players operation #training_room TrainingRoomScore > @a[tag=same_room,tag=!spectator,scores={TrainingRoomScore=0..}] TrainingRoomScore
execute if score #dialog Dialog matches 11 as @a[tag=same_room,tag=!spectator] if score @s TrainingRoomScore = #training_room TrainingRoomScore run tag @s add finalist
execute if score #dialog Dialog matches 11 store result score #temp Time if entity @a[tag=finalist]
execute if score #dialog Dialog matches 11 run scoreboard players reset #training_room TrainingRoomScore
execute if score #dialog Dialog matches 11 if score #temp Time matches 2.. run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.jeemee_jeemee
execute if score #dialog Dialog matches 11 if score #temp Time matches 2.. run tellraw @a[tag=same_room,tag=finalist] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.tie.it"}]}
execute if score #dialog Dialog matches 11 if score #temp Time matches 2.. run tellraw @a[tag=same_room,tag=!finalist] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.tie.not_it"}]}
execute if score #dialog Dialog matches 11 if score #temp Time matches 2.. as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.jeemee_jeemee neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 11 if score #temp Time matches 2.. as @a[tag=same_room,tag=!spectator,tag=!finalist] run function luigis_mansion:entities/player/animation/set/low_health_idle
execute if score #dialog Dialog matches 11 if score #temp Time matches 2.. run tag @a[tag=!finalist] remove idle
execute if score #dialog Dialog matches 11 if score #temp Time matches 2.. run tag @a[tag=finalist] remove finalist
execute if score #dialog Dialog matches 11 if score #temp Time matches 2.. run scoreboard players set #dialog Dialog 9
execute if score #dialog Dialog matches 9..11 run scoreboard players reset #temp Time

execute if score #dialog Dialog matches 12..53 run scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute if score #dialog Dialog matches 12..53 as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 12..53 as @a[tag=same_room] run function luigis_mansion:other/music/set/training_stop
execute if score #dialog Dialog matches 12 run scoreboard players set @e[tag=ghost,tag=same_room,tag=!vanish] ActionTime 0
execute if score #dialog Dialog matches 12 run tag @e[tag=ghost,tag=same_room] add vanish
execute if score #dialog Dialog matches 12 run tag @e[tag=ghost,tag=same_room] add disappear_on_vanish
execute if score #dialog Dialog matches 12 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/game_boy_horror
execute if score #dialog Dialog matches 12 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.jeemee_jeemee
execute if score #dialog Dialog matches 12 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.8"}]}
execute if score #dialog Dialog matches 12 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohyah_mee neutral @s ~ ~ ~ 1

#from 14 start ticking automatically

execute if score #dialog Dialog matches 54 run scoreboard players set @a[tag=same_room] Health 100
execute if score #dialog Dialog matches 54 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches 54..149 as @a[tag=same_room] run function luigis_mansion:other/music/set/training_results
execute if score #dialog Dialog matches 54 run function luigis_mansion:room/training_room/turn_lights/on
execute if score #dialog Dialog matches 54 run scoreboard players operation #training_room TrainingRoomScore > @a[tag=same_room,tag=!spectator] TrainingRoomScore
execute if score #dialog Dialog matches 54 run summon minecraft:firework_rocket 788 80 -8 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;14862336],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 59 run summon minecraft:firework_rocket 788 80 -4 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;14862336],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 64 run summon minecraft:firework_rocket 788 80 -12 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;14862336],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 69 if score #training_room TrainingRoomScore matches 50.. run summon minecraft:firework_rocket 788 81 -10 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;14853494],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 74 if score #training_room TrainingRoomScore matches 50.. run summon minecraft:firework_rocket 788 81 -6 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;14853494],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 79 if score #training_room TrainingRoomScore matches 90.. run summon minecraft:firework_rocket 788 80 -8 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;2993378],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 84 if score #training_room TrainingRoomScore matches 90.. run summon minecraft:firework_rocket 788 80 -4 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;2993378],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 89 if score #training_room TrainingRoomScore matches 90.. run summon minecraft:firework_rocket 788 80 -12 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;2993378],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 94 if score #training_room TrainingRoomScore matches 90.. run summon minecraft:firework_rocket 788 81 -10 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;2993378],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 99 if score #training_room TrainingRoomScore matches 90.. run summon minecraft:firework_rocket 788 81 -6 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0b,explosions:[{colors:[I;2993378],shape:"small_ball"}]}}}}
execute if score #dialog Dialog matches 54 as @a[tag=same_room,tag=!spectator] if score @s TrainingRoomScore = #training_room TrainingRoomScore run tag @s add winner
execute if score #dialog Dialog matches 54 run scoreboard players reset #training_room TrainingRoomScore
execute if score #dialog Dialog matches 54 unless score @a[tag=winner,limit=1] TrainingRoomScore matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.9","with":[{"type":"selector","selector":"@a[tag=winner,limit=1]"},{"type":"score","score":{"objective":"TrainingRoomScore","name":"@a[tag=winner,limit=1]"}}]}]}
execute if score #dialog Dialog matches 54 if score @a[tag=winner,limit=1] TrainingRoomScore matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.9.1","with":[{"type":"selector","selector":"@a[tag=winner,limit=1]"}]}]}
execute if score #dialog Dialog matches 54 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.tatta_tatta_tatta neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 54 run tag @a remove winner

execute if score #dialog Dialog matches 134.. run scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute if score #dialog Dialog matches 134.. as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 134..135 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 134 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.10"}]}
execute if score #dialog Dialog matches 134 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oui_soh_suu_suhm_ck_ck_yuuohh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 136 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/think

#Branch: Yes
execute if score #dialog Dialog matches 137 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.oui_soh_suu_suhm_ck_ck_yuuohh
execute if score #dialog Dialog matches 137 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/nod
execute if score #dialog Dialog matches 137..628 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 137 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.yes.1"}]}
execute if score #dialog Dialog matches 137 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.seedapee_ohyah neutral @s ~ ~ ~ 1
execute if score #dialog Dialog matches 137 run scoreboard players reset @a[tag=same_room] TrainingRoomScore
execute if score #dialog Dialog matches 137 run scoreboard players set @a[tag=same_room] Health 100
execute if score #dialog Dialog matches 137 run scoreboard players set #training_room Wave 0
execute if score #dialog Dialog matches 147 run scoreboard players set #dialog Dialog 6

#Branch: No
execute if score #dialog Dialog matches 148 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.oui_soh_suu_suhm_ck_ck_yuuohh
execute if score #dialog Dialog matches 148 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.no.1"}]}
execute if score #dialog Dialog matches 148 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 150 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches 150 as @a[tag=same_room] run function luigis_mansion:room/underground_lab/warp_to
execute if score #dialog Dialog matches 150 run scoreboard players set #dialog Dialog -1

#Branch: No multiplayer
execute if score #dialog Dialog matches 151..153 as @a[tag=same_room] run function luigis_mansion:other/music/set/training_stop
execute if score #dialog Dialog matches 151 run stopsound @a[tag=same_room] neutral
execute if score #dialog Dialog matches 151 run tag @e[tag=ghost,tag=same_room] add vanish
execute if score #dialog Dialog matches 151 run tag @e[tag=ghost,tag=same_room] add disappear_on_vanish
execute if score #dialog Dialog matches 151 run function luigis_mansion:room/training_room/turn_lights/on
execute if score #dialog Dialog matches 151 run scoreboard players set @a[tag=same_room] Health 100
execute if score #dialog Dialog matches 151 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.no_multiplayer.1"}]}
execute if score #dialog Dialog matches 151 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 153 if entity @a[tag=next_dialog_line,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh
execute if score #dialog Dialog matches 153 if entity @a[tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.no_multiplayer.2","with":[{"type":"selector","selector":"@a[tag=same_room,tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 153 if entity @a[tag=next_dialog_line,limit=1] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oui_longlaugh neutral @s ~ ~ ~ 1

execute if score #dialog Dialog matches 154 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches 154 as @a[tag=same_room] run function luigis_mansion:room/underground_lab/warp_to
execute if score #dialog Dialog matches 154 run scoreboard players set #dialog Dialog -1
tag @a[tag=same_room] remove select_dialog_branch_yes
tag @a[tag=same_room] remove select_dialog_branch_no