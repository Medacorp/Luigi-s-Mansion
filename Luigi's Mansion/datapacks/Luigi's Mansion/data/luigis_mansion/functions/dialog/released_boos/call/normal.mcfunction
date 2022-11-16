scoreboard players set #freeze_timer Selected 1
scoreboard players add @s GBHDialog 1
execute if entity @s[scores={GBHDialog=1..751}] as @a[gamemode=!spectator,tag=!game_boy_horror,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/game_boy_horror
execute if entity @s[scores={GBHDialog=1..}] as @a run function luigis_mansion:other/music/set/game_boy_horror
execute if entity @s[scores={GBHDialog=1}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.released_boos_call.1","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=1}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.released_boos_call.1.more"}]}
execute if entity @s[scores={GBHDialog=1}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi3 neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=48}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.released_boos_call.2"}]}
execute if entity @s[scores={GBHDialog=48}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.pen_pen_odoh_mah_mah_poheh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=208}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.released_boos_call.3","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=208}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.released_boos_call.3.more"}]}
execute if entity @s[scores={GBHDialog=208}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohmoogah_luigi_odoh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=424}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.released_boos_call.4"}]}
execute if entity @s[scores={GBHDialog=424}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.released_boos_call.4.more"}]}
execute if entity @s[scores={GBHDialog=424}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_hey_hey_suu_dehkooroo_hah neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=608}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.released_boos_call.5"}]}
execute if entity @s[scores={GBHDialog=608}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.released_boos_call.5.more"}]}
execute if entity @s[scores={GBHDialog=608}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oomahkah_oui_soy_soh_ooh_ck_ck neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=752}] as @a run function luigis_mansion:other/music/set/silence
execute if entity @s[scores={GBHDialog=752}] as @a[gamemode=!spectator,tag=game_boy_horror,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={GBHDialog=752}] as @a run function luigis_mansion:room/underground_lab/warp_to
execute if entity @s[scores={GBHDialog=752}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {released_boos_call:1b}
scoreboard players set @s[scores={GBHDialog=752}] GBHCall 0
scoreboard players set @s[scores={GBHDialog=752}] GBHWait 0
scoreboard players reset @s[scores={GBHDialog=752}] GBHDialog