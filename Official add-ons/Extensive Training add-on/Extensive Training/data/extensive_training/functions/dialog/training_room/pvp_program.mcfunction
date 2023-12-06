scoreboard players add @s[scores={Dialog=700..}] Dialog 1
execute if entity @a[scores={EGaddTrainingRoomChoice=1..},limit=1] run scoreboard players add @s[scores={Dialog=603..}] Dialog 1
scoreboard players add @s[scores={Dialog=488..602}] Dialog 1
execute if score #training_room Wave matches 10.. unless entity @e[tag=ghost,scores={Room=-2},limit=1] run scoreboard players set @s[scores={Dialog=487}] Dialog 488
scoreboard players add @s[scores={Dialog=..486}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute store result score #temp Time if entity @a[tag=same_room]
execute if score #temp Time matches 1 run scoreboard players set @s[scores={Dialog=..628}] Dialog 700
scoreboard players reset #temp Time
execute if entity @s[scores={Dialog=1..488}] as @a[tag=same_room] run function luigis_mansion:other/music/set/training
execute if entity @s[scores={Dialog=1}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.1"}]}
execute if entity @s[scores={Dialog=1}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.gay_roon_ehdeedee_odoh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=80}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.2"}]}
execute if entity @s[scores={Dialog=80}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.bohh_squirtbottlelaugh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=152}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.3"}]}
execute if entity @s[scores={Dialog=152}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mm_poheh_oyahmah_oydohroh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=224}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.4"}]}
execute if entity @s[scores={Dialog=224}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hap_poh_tatta_tatta neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=296}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.5"}]}
execute if entity @s[scores={Dialog=296}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hey_hey_nohjeebeedoggy_oomahkah_ooh_ooh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=462}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.6"}]}
execute if entity @s[scores={Dialog=462}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ehdeedee neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=478}] run scoreboard players reset @a EGaddTrainingRoomChoice
execute if entity @s[scores={Dialog=478}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.7"}]}
execute if entity @s[scores={Dialog=478}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.yahmum_baah neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=486}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Dialog=486}] run function luigis_mansion:room/training_room/turn_lights/off
execute if entity @s[scores={Dialog=487}] run tag @e[tag=ghost,scores={Room=-2},tag=hidden,tag=can_spawn,limit=1] add spawn
execute if entity @s[scores={Dialog=487}] unless entity @e[tag=ghost,scores={Room=-2},limit=1] run function extensive_training:room/training_room/spawn_wave/pvp
execute if entity @s[scores={Dialog=487}] store result score #temp Time if entity @a[tag=same_room]
execute if entity @s[scores={Dialog=487}] store result score #temp2 Time if entity @a[tag=same_room,scores={Animation=2},tag=!idle]
execute if entity @s[scores={Dialog=487}] run scoreboard players operation #temp Time -= #temp2 Time
execute if entity @s[scores={Dialog=487}] if score #temp Time matches 1 run scoreboard players set @s Dialog 489
execute as @a[scores={Health=..0},tag=same_room,tag=looking_at_map] at @s run function luigis_mansion:selection_menu/game_boy_horror/map/exit
execute as @a[scores={Health=..0},tag=same_room] run function luigis_mansion:entities/player/animation/set/low_health_idle
tag @a[scores={Health=..0},tag=same_room] remove idle
scoreboard players reset @a[scores={Health=..0},tag=same_room] TrainingRoomScore
scoreboard players reset @a[scores={Health=..0},tag=same_room] DeathTime
tag @a[scores={Health=..0},tag=same_room] remove death_animation
execute as @a[scores={Health=..0},tag=same_room,tag=vacuuming_ghost] at @s run function luigis_mansion:entities/player/poltergust_breakage
tellraw @a[scores={Health=..0},tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.death"}]}
execute as @a[scores={Health=..0},tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.jeemee_jeemee neutral @s ~ ~ ~ 1
scoreboard players set @a[scores={Health=..0},tag=same_room] Health 100
execute if entity @s[scores={Dialog=488}] run scoreboard players reset #training_room TrainingRoomScore
execute if entity @s[scores={Dialog=488}] run scoreboard players add @a[tag=same_room] TrainingRoomScore 0
execute if entity @s[scores={Dialog=488}] run scoreboard players operation #training_room TrainingRoomScore > @a[tag=same_room,tag=!spectator] TrainingRoomScore
execute if entity @s[scores={Dialog=488}] as @a[tag=same_room,tag=!spectator] if score @s TrainingRoomScore = #training_room TrainingRoomScore run tag @s add finalist
execute if entity @s[scores={Dialog=488}] store result score #temp Time if entity @a[tag=finalist]
execute if entity @s[scores={Dialog=488}] run scoreboard players reset #training_room TrainingRoomScore
execute if entity @s[scores={Dialog=488}] if score #temp Time matches 2.. run tellraw @a[tag=same_room,tag=finalist] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.tie.it"}]}
execute if entity @s[scores={Dialog=488}] if score #temp Time matches 2.. run tellraw @a[tag=same_room,tag=!finalist] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.tie.not_it"}]}
execute if entity @s[scores={Dialog=488}] if score #temp Time matches 2.. as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.jeemee_jeemee neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=488}] if score #temp Time matches 2.. as @a[tag=same_room,gamemode=!spectator,tag=!finalist,tag=looking_at_map] at @s run function luigis_mansion:selection_menu/game_boy_horror/map/exit
execute if entity @s[scores={Dialog=488}] if score #temp Time matches 2.. as @a[tag=same_room,gamemode=!spectator,tag=!finalist] run function luigis_mansion:entities/player/animation/set/low_health_idle
execute if entity @s[scores={Dialog=488}] if score #temp Time matches 2.. run tag @a[tag=!finalist] remove idle
execute if entity @s[scores={Dialog=488}] if score #temp Time matches 2.. run tag @a[tag=finalist] remove finalist
execute if entity @s[scores={Dialog=488}] if score #temp Time matches 2.. run scoreboard players set @s Dialog 486
execute if entity @s[scores={Dialog=486..489}] run scoreboard players reset #temp Time
execute if entity @s[scores={Dialog=490..603}] as @a[tag=same_room] run function luigis_mansion:other/music/set/training_results
execute if entity @s[scores={Dialog=490}] run tag @e[tag=ghost,scores={Room=-2}] add vanish
execute if entity @s[scores={Dialog=490}] run tag @e[tag=ghost,scores={Room=-2}] add disappear_on_vanish
execute if entity @s[scores={Dialog=490}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/game_boy_horror
execute if entity @s[scores={Dialog=490}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.8"}]}
execute if entity @s[scores={Dialog=490}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohyah_mee neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=522}] run function luigis_mansion:room/training_room/turn_lights/on
execute if entity @s[scores={Dialog=522}] run scoreboard players operation #training_room TrainingRoomScore > @a[tag=same_room,tag=!spectator] TrainingRoomScore
execute if entity @s[scores={Dialog=522}] run summon minecraft:firework_rocket 788 80 -8 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:0b,Explosions:[{Colors:[I;14862336],Type:0b,Trail:0b,Flicker:0b}]}}}}
execute if entity @s[scores={Dialog=527}] run summon minecraft:firework_rocket 788 80 -4 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:0b,Explosions:[{Colors:[I;14862336],Type:0b,Trail:0b,Flicker:0b}]}}}}
execute if entity @s[scores={Dialog=532}] run summon minecraft:firework_rocket 788 80 -12 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:0b,Explosions:[{Colors:[I;14862336],Type:0b,Trail:0b,Flicker:0b}]}}}}
execute if entity @s[scores={Dialog=537}] if score #training_room TrainingRoomScore matches 50.. run summon minecraft:firework_rocket 788 81 -10 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:0b,Explosions:[{Colors:[I;14853494],Type:0b,Trail:0b,Flicker:0b}]}}}}
execute if entity @s[scores={Dialog=542}] if score #training_room TrainingRoomScore matches 50.. run summon minecraft:firework_rocket 788 81 -6 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:0b,Explosions:[{Colors:[I;14853494],Type:0b,Trail:0b,Flicker:0b}]}}}}
execute if entity @s[scores={Dialog=547}] if score #training_room TrainingRoomScore matches 90.. run summon minecraft:firework_rocket 788 80 -8 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:0b,Explosions:[{Colors:[I;2993378],Type:0b,Trail:0b,Flicker:0b}]}}}}
execute if entity @s[scores={Dialog=552}] if score #training_room TrainingRoomScore matches 90.. run summon minecraft:firework_rocket 788 80 -4 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:0b,Explosions:[{Colors:[I;2993378],Type:0b,Trail:0b,Flicker:0b}]}}}}
execute if entity @s[scores={Dialog=557}] if score #training_room TrainingRoomScore matches 90.. run summon minecraft:firework_rocket 788 80 -12 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:0b,Explosions:[{Colors:[I;2993378],Type:0b,Trail:0b,Flicker:0b}]}}}}
execute if entity @s[scores={Dialog=562}] if score #training_room TrainingRoomScore matches 90.. run summon minecraft:firework_rocket 788 81 -10 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:0b,Explosions:[{Colors:[I;2993378],Type:0b,Trail:0b,Flicker:0b}]}}}}
execute if entity @s[scores={Dialog=567}] if score #training_room TrainingRoomScore matches 90.. run summon minecraft:firework_rocket 788 81 -6 {LifeTime:0,Life:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:0b,Explosions:[{Colors:[I;2993378],Type:0b,Trail:0b,Flicker:0b}]}}}}
execute if entity @s[scores={Dialog=522}] as @a[tag=same_room,tag=!spectator] if score @s TrainingRoomScore = #training_room TrainingRoomScore run tag @s add winner
execute if entity @s[scores={Dialog=522}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.9","with":[{"type":"selector","selector":"@a[tag=winner,limit=1]"},{"type":"score","score":{"objective":"TrainingRoomScore","name":"@a[tag=winner,limit=1]"}}]}]}
execute if entity @s[scores={Dialog=522}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.tatta_tatta_tatta neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=522}] run tag @a remove winner
execute if entity @s[scores={Dialog=570}] run scoreboard players reset #training_room TrainingRoomScore
execute if entity @s[scores={Dialog=570}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.10"}]}
execute if entity @s[scores={Dialog=570}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oui_soh_suu_suhm_ck_ck_yuuohh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=602..603}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/thinking
execute if entity @s[scores={Dialog=602}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"extensive_training:dialog.pvp.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger EGaddTrainingRoomChoice set 1"},"extra":[{"type":"text","text":"\n"},{"type":"translatable","translate":"extensive_training:dialog.pvp.no","clickEvent":{"action":"run_command","value":"/trigger EGaddTrainingRoomChoice set 2"}}]}
execute if entity @s[scores={Dialog=602}] run scoreboard players enable @a[tag=same_room] EGaddTrainingRoomChoice
execute if entity @s[scores={Dialog=604}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/nod
execute if entity @s[scores={Dialog=604}] if entity @a[scores={EGaddTrainingRoomChoice=1..}] as @a[scores={EGaddTrainingRoomChoice=0}] run trigger EGaddTrainingRoomChoice set 0
execute if entity @s[scores={Dialog=604..628}] if entity @a[scores={EGaddTrainingRoomChoice=1}] as @a[tag=same_room] run function luigis_mansion:other/music/set/training
execute if entity @s[scores={Dialog=604}] if entity @a[scores={EGaddTrainingRoomChoice=1}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.yes.1"}]}
execute if entity @s[scores={Dialog=604}] if entity @a[scores={EGaddTrainingRoomChoice=1}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.seedapee_ohyah neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=604}] if entity @a[scores={EGaddTrainingRoomChoice=1}] run scoreboard players reset @a[tag=same_room] TrainingRoomScore
execute if entity @s[scores={Dialog=604}] if entity @a[scores={EGaddTrainingRoomChoice=1}] run scoreboard players set @a[tag=same_room] Health 100
execute if entity @s[scores={Dialog=628}] if entity @a[scores={EGaddTrainingRoomChoice=1}] run scoreboard players set @s Dialog 477
execute if entity @s[scores={Dialog=604}] if entity @a[scores={EGaddTrainingRoomChoice=2}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.no.1"}]}
execute if entity @s[scores={Dialog=604}] if entity @a[scores={EGaddTrainingRoomChoice=2}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=620}] if entity @a[scores={EGaddTrainingRoomChoice=2}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Dialog=620}] if entity @a[scores={EGaddTrainingRoomChoice=2}] as @a[tag=same_room] run function luigis_mansion:room/underground_lab/warp_to
execute if entity @s[scores={Dialog=620}] run scoreboard players reset @a EGaddTrainingRoomChoice
execute if entity @s[scores={Dialog=700}] run tag @e[tag=ghost,scores={Room=-2}] add vanish
execute if entity @s[scores={Dialog=700}] run tag @e[tag=ghost,scores={Room=-2}] add disappear_on_vanish
execute if entity @s[scores={Dialog=700}] run function luigis_mansion:room/training_room/turn_lights/on
execute if entity @s[scores={Dialog=700}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.no_multiplayer.1"}]}
execute if entity @s[scores={Dialog=700}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=812}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.no_multiplayer.2","with":[{"type":"selector","selector":"@a[tag=same_room,tag=!spectator]"}]}]}
execute if entity @s[scores={Dialog=812}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oui_longlaugh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=892}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Dialog=892}] as @a[tag=same_room] run function luigis_mansion:room/underground_lab/warp_to