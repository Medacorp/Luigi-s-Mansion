scoreboard players set #freeze_timer Selected 1
scoreboard players add @s GBHDialog 1
execute if entity @s[scores={GBHDialog=1..863}] as @a[gamemode=!spectator,tag=!gameboy_horror,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/gameboy_horror
execute if entity @s[scores={GBHDialog=1..}] as @a run function luigis_mansion:other/music/set/gameboy_horror
execute if entity @s[scores={GBHDialog=1}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.water_element_medal.1","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=1}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.water_element_medal.1.more"}]}
execute if entity @s[scores={GBHDialog=1}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi_oui neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=88}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.water_element_medal.2"}]}
execute if entity @s[scores={GBHDialog=88}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oydohroh_odoh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=120}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.water_element_medal.3"}]}
execute if entity @s[scores={GBHDialog=120}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.yahboh_yahboh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=152}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.water_element_medal.4"}]}
execute if entity @s[scores={GBHDialog=152}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.water_element_medal.4.more"}]}
execute if entity @s[scores={GBHDialog=152}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.odoh_mah_mah_bohh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=208}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.water_element_medal.5"}]}
execute if entity @s[scores={GBHDialog=208}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.water_element_medal.5.more"}]}
execute if entity @s[scores={GBHDialog=208}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mm_nohjeebeedoggy_ohyah_oydohroh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=368}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.water_element_medal.6"}]}
execute if entity @s[scores={GBHDialog=368}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.water_element_medal.6.more"}]}
execute if entity @s[scores={GBHDialog=368}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=552}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.water_element_medal.7"}]}
execute if entity @s[scores={GBHDialog=552}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_oh_tohmah_ck_ck_bohh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=752}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.water_element_medal.8","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=752}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.water_element_medal.8.more"}]}
execute if entity @s[scores={GBHDialog=752}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi_odoh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=864}] as @a run function luigis_mansion:other/music/set/silence
execute if entity @s[scores={GBHDialog=864}] as @a[gamemode=!spectator,tag=!enthusiastic,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/enthusiastic
scoreboard players set @s[scores={GBHDialog=864}] GBHCall 0
scoreboard players set @s[scores={GBHDialog=864}] GBHWait 0
scoreboard players reset @s[scores={GBHDialog=864}] GBHDialog