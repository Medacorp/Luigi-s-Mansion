scoreboard players set #freeze_timer Selected 1
scoreboard players add @s GBHDialog 1
execute if entity @s[scores={GBHDialog=1..623}] as @a[gamemode=!spectator,tag=!gameboy_horror,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/gameboy_horror
execute if entity @s[scores={GBHDialog=1..}] as @a run function luigis_mansion:other/music/set/gameboy_horror
execute if entity @s[scores={GBHDialog=1}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_1_key.1"}]}
execute if entity @s[scores={GBHDialog=1}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=16}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_1_key.2","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=16}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_1_key.2.more"}]}
execute if entity @s[scores={GBHDialog=16}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi3 neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=72}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_1_key.3"}]}
execute if entity @s[scores={GBHDialog=72}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_1_key.3.more"}]}
execute if entity @s[scores={GBHDialog=72}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mee_oomahkah_suku_suku_yahboh_yahboh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=224}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_1_key.4"}]}
execute if entity @s[scores={GBHDialog=224}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_1_key.4.more"}]}
execute if entity @s[scores={GBHDialog=224}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_hey_hey_suu_dehkooroo_hah neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=344}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_1_key.5"}]}
execute if entity @s[scores={GBHDialog=344}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_1_key.5.more"}]}
execute if entity @s[scores={GBHDialog=344}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.gay_roon_ehdeedee_odoh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=408}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_1_key.6"}]}
execute if entity @s[scores={GBHDialog=408}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_1_key.6.more"}]}
execute if entity @s[scores={GBHDialog=408}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oomahkah_oui_soy_soh_ooh_ck_ck neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=528}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_1_key.7"}]}
execute if entity @s[scores={GBHDialog=528}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_1_key.7.more"}]}
execute if entity @s[scores={GBHDialog=528}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohyah_squirtbottlelaugh_bohh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=624}] as @a[gamemode=!spectator,tag=!nod,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/nod
execute if entity @s[scores={GBHDialog=644}] as @a[gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={GBHDialog=644}] as @a run function luigis_mansion:room/ghost_portrificationizer_room/warp_to
execute if entity @s[scores={GBHDialog=646},advancements={luigis_mansion:lab/ghost_portrificationizer_room=true}] run tag @e[tag=e_gadd,scores={Room=-3},limit=1] add return_dialog
execute if entity @s[scores={GBHDialog=646},advancements={luigis_mansion:lab/ghost_portrificationizer_room=false}] run tag @e[tag=e_gadd,scores={Room=-3},limit=1] add talk
execute if entity @s[scores={GBHDialog=646},advancements={luigis_mansion:lab/ghost_portrificationizer_room=false}] run tag @e[tag=e_gadd,scores={Room=-3},limit=1] add ghost_portrificationizer_room_dialog
execute if entity @s[scores={GBHDialog=646},advancements={luigis_mansion:lab/ghost_portrificationizer_room=false}] run scoreboard players set @e[tag=e_gadd,scores={Room=-3},limit=1] Dialog 529
scoreboard players set @s[scores={GBHDialog=646}] GBHCall 0
scoreboard players set @s[scores={GBHDialog=646}] GBHWait 0
scoreboard players reset @s[scores={GBHDialog=646}] GBHDialog