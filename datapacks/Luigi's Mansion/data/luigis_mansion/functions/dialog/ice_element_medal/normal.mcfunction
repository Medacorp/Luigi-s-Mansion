scoreboard players set #freeze_timer Selected 1
scoreboard players add @s GBHDialog 1
execute if entity @s[scores={GBHDialog=1..1119}] as @a[gamemode=!spectator,tag=!gameboy_horror,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/gameboy_horror
execute if entity @s[scores={GBHDialog=1..}] as @a unless entity @s[scores={MusicGroup=0,MusicType=19}] run function luigis_mansion:other/music/set/gameboy_horror
execute if entity @s[scores={GBHDialog=1}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ice_element_medal.1","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=1}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ice_element_medal.1.more"}]}
execute if entity @s[scores={GBHDialog=1}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi_odoh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=112}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ice_element_medal.2"}]}
execute if entity @s[scores={GBHDialog=112}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.pen_pen neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=136}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ice_element_medal.3"}]}
execute if entity @s[scores={GBHDialog=136}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ice_element_medal.3.more"}]}
execute if entity @s[scores={GBHDialog=136}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hoo_hoo_jeemee_jeemee_kehkeh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=224}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ice_element_medal.4"}]}
execute if entity @s[scores={GBHDialog=224}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ice_element_medal.4.more"}]}
execute if entity @s[scores={GBHDialog=224}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.gay_roon_ehdeedee_odoh_tahmentahkeh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=384}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ice_element_medal.5"}]}
execute if entity @s[scores={GBHDialog=384}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ice_element_medal.5.more"}]}
execute if entity @s[scores={GBHDialog=384}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oomahkah_oui_soy_soh_ooh_ck_ck neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=600}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ice_element_medal.6"}]}
execute if entity @s[scores={GBHDialog=600}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ice_element_medal.6.more"}]}
execute if entity @s[scores={GBHDialog=600}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hmmm_nohjeebeedoggy_oui_ohmoogah neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=712}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ice_element_medal.7"}]}
execute if entity @s[scores={GBHDialog=712}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ice_element_medal.7.more"}]}
execute if entity @s[scores={GBHDialog=712}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohyah_ohyahmah_hey_hey_oui neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=912}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ice_element_medal.8","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=912}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ice_element_medal.8.more"}]}
execute if entity @s[scores={GBHDialog=912}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mah_mah_mah_luigi_oui neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=1120}] as @a run function luigis_mansion:other/music/set/silence
execute if entity @s[scores={GBHDialog=1120}] as @a[gamemode=!spectator,tag=!enthusiastic,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/enthusiastic
scoreboard players set @s[scores={GBHDialog=1120}] GBHCall 0
scoreboard players set @s[scores={GBHDialog=1120}] GBHWait 0
scoreboard players reset @s[scores={GBHDialog=1120}] GBHDialog