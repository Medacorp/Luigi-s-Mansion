scoreboard players set #freeze_timer Selected 1
scoreboard players add @s GBHDialog 1
execute if entity @s[scores={GBHDialog=1..}] as @a unless entity @s[scores={MusicGroup=0,MusicType=19}] run function luigis_mansion:other/music/set/gameboy_horror
execute if entity @s[scores={GBHDialog=1}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.1"}]}
execute if entity @s[scores={GBHDialog=1}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=16}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.2","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=16}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.2.more"}]}
execute if entity @s[scores={GBHDialog=16}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi3 neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=80}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.3"}]}
execute if entity @s[scores={GBHDialog=80}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.3.more"}]}
execute if entity @s[scores={GBHDialog=80}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=176}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.4"}]}
execute if entity @s[scores={GBHDialog=176}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.4.more"}]}
execute if entity @s[scores={GBHDialog=176}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.suku_suku_oydohrom_odoh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=240}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.5"}]}
execute if entity @s[scores={GBHDialog=240}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.5.more"}]}
execute if entity @s[scores={GBHDialog=240}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.gay_roon_ehdeedee_odoh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=304}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.6"}]}
execute if entity @s[scores={GBHDialog=304}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.6.more"}]}
execute if entity @s[scores={GBHDialog=304}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oui_oydohroh_tahmentahkeh2 neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=376}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.7"}]}
execute if entity @s[scores={GBHDialog=376}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.tatta_tatta neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=408}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.8"}]}
execute if entity @s[scores={GBHDialog=408}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.8.more"}]}
execute if entity @s[scores={GBHDialog=408}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.shortlaugh_oomahkah_bohh_squirtbottlelaugh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=552}] as @a run function luigis_mansion:room/ghost_portrificationizer_room/warp_to
execute if entity @s[scores={GBHDialog=554},advancements={luigis_mansion:lab/ghost_portrificationizer_room=true}] run tag @e[tag=e_gadd,scores={Room=-3},limit=1] add return_dialog
execute if entity @s[scores={GBHDialog=554},advancements={luigis_mansion:lab/ghost_portrificationizer_room=false}] run tag @e[tag=e_gadd,scores={Room=-3},limit=1] add talk
scoreboard players set @s[scores={GBHDialog=554}] GBHCall 0
scoreboard players set @s[scores={GBHDialog=554}] GBHWait 0
scoreboard players reset @s[scores={GBHDialog=554}] GBHDialog