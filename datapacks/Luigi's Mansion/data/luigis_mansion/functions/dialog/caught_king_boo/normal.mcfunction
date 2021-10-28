scoreboard players set #freeze_timer Selected 1
scoreboard players add @s GBHDialog 1
execute if entity @s[scores={GBHDialog=1..}] as @a unless entity @s[scores={MusicGroup=0,MusicType=19}] run function luigis_mansion:other/music/set/gameboy_horror
execute if entity @s[scores={GBHDialog=1}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_king_boo.1"}]}
execute if entity @s[scores={GBHDialog=1}] as @a at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=16}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_king_boo.2","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=16}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_king_boo.2.more"}]}
execute if entity @s[scores={GBHDialog=16}] as @a at @s run playsound luigis_mansion:entity.e_gadd.talk.ohmayah_luigi neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=88}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_king_boo.3"}]}
execute if entity @s[scores={GBHDialog=88}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_king_boo.3.more"}]}
execute if entity @s[scores={GBHDialog=88}] as @a at @s run playsound luigis_mansion:entity.e_gadd.talk.gay_roon_ehdeedee_odoh_tahmentahkeh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=224}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_king_boo.4"}]}
execute if entity @s[scores={GBHDialog=224}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_king_boo.4.more"}]}
execute if entity @s[scores={GBHDialog=224}] as @a at @s run playsound luigis_mansion:entity.e_gadd.talk.oh_tohmah_mee_ohyah_tehmehno_tahkeh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=320}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_king_boo.5"}]}
execute if entity @s[scores={GBHDialog=320}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_king_boo.5.more"}]}
execute if entity @s[scores={GBHDialog=320}] as @a at @s run playsound luigis_mansion:entity.e_gadd.talk.ohyah_ohyahmah_hey_hey_oui neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=488}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_king_boo.6"}]}
execute if entity @s[scores={GBHDialog=488}] as @a at @s run playsound luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=608}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_king_boo.7"}]}
execute if entity @s[scores={GBHDialog=608}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_king_boo.7.more"}]}
execute if entity @s[scores={GBHDialog=608}] as @a at @s run playsound luigis_mansion:entity.e_gadd.talk.hey_hey_nohjeebeedoggy_oomahkah_ooh_ooh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=848}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_king_boo.8"}]}
execute if entity @s[scores={GBHDialog=848}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_king_boo.8.more"}]}
execute if entity @s[scores={GBHDialog=848}] as @a at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_hey_hey_suu_dehkooroo_hah neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=1072}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_king_boo.9","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=1072}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_king_boo.9.more"}]}
execute if entity @s[scores={GBHDialog=1072}] as @a at @s run playsound luigis_mansion:entity.e_gadd.talk.oh_tohmah_poheh_jeemee_jeemee neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=1192}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_king_boo.10"}]}
execute if entity @s[scores={GBHDialog=1192}] as @a at @s run playsound luigis_mansion:entity.e_gadd.talk.shortlaugh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=1264}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_king_boo.11"}]}
execute if entity @s[scores={GBHDialog=1264}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_king_boo.11.more"}]}
execute if entity @s[scores={GBHDialog=1264}] as @a at @s run playsound luigis_mansion:entity.e_gadd.talk.suku_suku_ck_ck_yahboh_yahboh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=1384}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_king_boo.12"}]}
execute if entity @s[scores={GBHDialog=1384}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_king_boo.12.more"}]}
execute if entity @s[scores={GBHDialog=1384}] as @a at @s run playsound luigis_mansion:entity.e_gadd.talk.hey_hey_suu_tahmentahkeh_oydohroh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=1528}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_king_boo.13"}]}
execute if entity @s[scores={GBHDialog=1528}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_king_boo.13.more"}]}
execute if entity @s[scores={GBHDialog=1528}] as @a at @s run playsound luigis_mansion:entity.e_gadd.talk.ohyah_mee neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=1568}] as @a run function luigis_mansion:other/music/set/silence
scoreboard players set @s[scores={GBHDialog=1568}] GBHCall 0
scoreboard players set @s[scores={GBHDialog=1568}] GBHWait 0
scoreboard players reset @s[scores={GBHDialog=1568}] GBHDialog