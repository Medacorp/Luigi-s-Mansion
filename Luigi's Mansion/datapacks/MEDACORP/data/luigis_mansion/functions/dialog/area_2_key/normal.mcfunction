scoreboard players set #freeze_timer Selected 1
scoreboard players add @s GBHDialog 1
execute if entity @s[scores={GBHDialog=1..559}] as @a[gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/game_boy_horror
execute if entity @s[scores={GBHDialog=1..}] as @a run function luigis_mansion:other/music/set/game_boy_horror
execute if entity @s[scores={GBHDialog=1}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.1"}]}
execute if entity @s[scores={GBHDialog=1}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=16}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.2","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=16}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.2.more"}]}
execute if entity @s[scores={GBHDialog=16}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi3 neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=80}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.3"}]}
execute if entity @s[scores={GBHDialog=80}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.3.more"}]}
execute if entity @s[scores={GBHDialog=80}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=184}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.4"}]}
execute if entity @s[scores={GBHDialog=184}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.4.more"}]}
execute if entity @s[scores={GBHDialog=184}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.suku_suku_oydohrom_odoh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=248}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.5"}]}
execute if entity @s[scores={GBHDialog=248}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.5.more"}]}
execute if entity @s[scores={GBHDialog=248}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.gay_roon_ehdeedee_odoh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=312}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.6"}]}
execute if entity @s[scores={GBHDialog=312}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.6.more"}]}
execute if entity @s[scores={GBHDialog=312}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oui_oydohroh_tahmentahkeh2 neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=384}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.7"}]}
execute if entity @s[scores={GBHDialog=384}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.tatta_tatta neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=416}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.8"}]}
execute if entity @s[scores={GBHDialog=416}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_2_key.8.more"}]}
execute if entity @s[scores={GBHDialog=416}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.shortlaugh_oomahkah_bohh_squirtbottlelaugh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=560}] as @a[gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={GBHDialog=560}] as @a run function luigis_mansion:room/ghost_portrificationizer_room/warp_to
execute if entity @s[scores={GBHDialog=562},advancements={luigis_mansion:lab/ghost_portrificationizer_room=true}] run tag @e[tag=e_gadd,scores={Room=-3},limit=1] add return_dialog
execute if entity @s[scores={GBHDialog=562},advancements={luigis_mansion:lab/ghost_portrificationizer_room=false}] run tag @e[tag=e_gadd,scores={Room=-3},limit=1] add talk
execute if entity @s[scores={GBHDialog=562},advancements={luigis_mansion:lab/ghost_portrificationizer_room=false}] run tag @e[tag=e_gadd,scores={Room=-3},limit=1] add ghost_portrificationizer_room_dialog
execute if entity @s[scores={GBHDialog=562},advancements={luigis_mansion:lab/ghost_portrificationizer_room=false}] run scoreboard players set @e[tag=e_gadd,scores={Room=-3},limit=1] Dialog 529
scoreboard players set @s[scores={GBHDialog=562}] GBHCall 0
scoreboard players set @s[scores={GBHDialog=562}] GBHWait 0
scoreboard players reset @s[scores={GBHDialog=562}] GBHDialog