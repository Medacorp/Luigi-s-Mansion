scoreboard players add @s Dialog 1
tag @s[scores={Dialog=1}] add nod
execute if entity @s[scores={Dialog=1..1711}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
scoreboard players set @s[scores={Dialog=1}] AnimationProgress 0
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.1","with":[{"selector":"@p[gamemode=!spectator]"},{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 2..4 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.1.more"}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 5.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.1.even_more"}]}
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:entity.e_gadd.talk.ohmoogah_luigi_odoh neutral @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={Dialog=152}] add listen
tag @s[scores={Dialog=152}] remove nod
execute if entity @s[scores={Dialog=152..519}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/thinking
scoreboard players set @s[scores={Dialog=152}] AnimationProgress 0
execute if entity @s[scores={Dialog=152}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.2"}]}
execute if entity @s[scores={Dialog=152}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.2.more"}]}
execute if entity @s[scores={Dialog=152}] run playsound luigis_mansion:entity.e_gadd.talk.oydohroh neutral @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={Dialog=192}] remove listen
tag @s[scores={Dialog=192}] add nod
scoreboard players set @s[scores={Dialog=192}] AnimationProgress 0
execute if entity @s[scores={Dialog=192}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.3"}]}
execute if entity @s[scores={Dialog=192}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.3.more"}]}
execute if entity @s[scores={Dialog=192}] run playsound luigis_mansion:entity.e_gadd.talk.ohyah_ohyahmah_hey_hey_oui neutral @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={Dialog=392}] remove nod
tag @s[scores={Dialog=392}] add shake
scoreboard players set @s[scores={Dialog=392}] AnimationProgress 0
execute if entity @s[scores={Dialog=392}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.4"}]}
execute if entity @s[scores={Dialog=392}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.4.more"}]}
execute if entity @s[scores={Dialog=392}] run playsound luigis_mansion:entity.e_gadd.talk.oh_tohmah_poheh_jeemee_jeemee_pen_pen neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=520}] as @a[tag=same_room,tag=!spectator,tag=thinking,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Dialog=520}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.5"}]}
execute if entity @s[scores={Dialog=520}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.5.more"}]}
execute if entity @s[scores={Dialog=520}] run playsound luigis_mansion:entity.e_gadd.talk.hey_hey_nohjeebeedoggy_oomahkah_ooh_ooh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=592..1335}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
execute if entity @s[scores={Dialog=592}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.6"}]}
execute if entity @s[scores={Dialog=592}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.6.more"}]}
execute if entity @s[scores={Dialog=592}] run playsound luigis_mansion:entity.e_gadd.talk.seedapee_nohjeebeedoggy_soh_suu_suhm_oydohroh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=832}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.7"}]}
execute if entity @s[scores={Dialog=832}] run playsound luigis_mansion:entity.e_gadd.talk.suu_kehkeh_soy_soh_ooh_soh_kah_mee neutral @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={Dialog=1016}] add nod
tag @s[scores={Dialog=1016}] remove shake
scoreboard players set @s[scores={Dialog=1016}] AnimationProgress 0
execute if entity @s[scores={Dialog=1016}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.8"}]}
execute if entity @s[scores={Dialog=1016}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.8.more"}]}
execute if entity @s[scores={Dialog=1016}] run playsound luigis_mansion:entity.e_gadd.talk.hey_hey_suu_tahmentahkeh_oydohroh neutral @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={Dialog=1336}] add listen
tag @s[scores={Dialog=1336}] remove nod
execute if entity @s[scores={Dialog=1336}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/nod
scoreboard players set @s[scores={Dialog=1336}] AnimationProgress 0
execute if entity @s[scores={Dialog=1336}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.9"}]}
execute if entity @s[scores={Dialog=1336}] run playsound luigis_mansion:entity.e_gadd.talk.mm_oydohroh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=1344}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.10"}]}
execute if entity @s[scores={Dialog=1344}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.10.more"}]}
execute if entity @s[scores={Dialog=1344}] run playsound luigis_mansion:entity.e_gadd.talk.hap_poh_tatta_tatta neutral @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={Dialog=1416}] remove listen
tag @s[scores={Dialog=1416}] add shake
scoreboard players set @s[scores={Dialog=1416}] AnimationProgress 0
execute if entity @s[scores={Dialog=1416}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.11"}]}
execute if entity @s[scores={Dialog=1416}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.11.more"}]}
execute if entity @s[scores={Dialog=1416}] run playsound luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh neutral @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={Dialog=1552}] add nod
tag @s[scores={Dialog=1552}] remove shake
scoreboard players set @s[scores={Dialog=1552}] AnimationProgress 0
execute if entity @s[scores={Dialog=1552}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.12","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=1552}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.12.more"}]}
execute if entity @s[scores={Dialog=1552}] run playsound luigis_mansion:entity.e_gadd.talk.ohdoh_luigi_tahmentahkeh_suku_suku neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=1712}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/enthusiastic
execute if entity @s[scores={Dialog=1732}] as @a run function luigis_mansion:room/training_room/warp_to
execute if entity @s[scores={Dialog=1732}] run data modify storage luigis_mansion:data rooms.underground_lab merge value {cleared:1b}
execute if entity @s[scores={Dialog=1732}] run advancement grant @a only luigis_mansion:vanilla/unlock_mansion
execute if entity @s[scores={Dialog=1732}] run tag @a[tag=looking_at_map,nbt={Dimension:"minecraft:overworld"},limit=1] add regenerate_map