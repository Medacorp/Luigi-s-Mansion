scoreboard players set #freeze_timer Selected 1
scoreboard players add @s GBHDialog 1
execute if entity @s[scores={GBHDialog=1..}] as @a unless entity @s[scores={MusicGroup=0,MusicType=19}] run function luigis_mansion:other/music/set/gameboy_horror
execute if entity @s[scores={GBHDialog=1}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.blackout.1"}]}
execute if entity @s[scores={GBHDialog=1}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.yaahboh_yaahboh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=32}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.blackout.2"}]}
execute if entity @s[scores={GBHDialog=32}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.yahboh_yahboh_hoo_hoo_hoo neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=88}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.blackout.3"}]}
execute if entity @s[scores={GBHDialog=88}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_oh_tohmah_ck_ck_bohh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=224}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.blackout.4","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=224}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.blackout.4.more"}]}
execute if entity @s[scores={GBHDialog=224}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi_odoh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=360}] as @a run function luigis_mansion:other/music/set/silence
scoreboard players set @s[scores={GBHDialog=360}] GBHCall 0
scoreboard players set @s[scores={GBHDialog=360}] GBHWait 0
scoreboard players reset @s[scores={GBHDialog=360}] GBHDialog