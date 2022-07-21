scoreboard players set #freeze_timer Selected 1
scoreboard players add @s GBHDialog 1
execute if entity @s[scores={GBHDialog=1..775}] as @a[gamemode=!spectator,tag=!gameboy_horror,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/gameboy_horror
execute if entity @s[scores={GBHDialog=1..}] as @a run function luigis_mansion:other/music/set/gameboy_horror
execute if entity @s[scores={GBHDialog=1}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.portrait_ghosts.1","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=1}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.portrait_ghosts.1.more"}]}
execute if entity @s[scores={GBHDialog=1}] as @a at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=56}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.portrait_ghosts.2"}]}
execute if entity @s[scores={GBHDialog=56}] as @a at @s run playsound luigis_mansion:entity.e_gadd.talk.oydohroh_odoh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=96}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.portrait_ghosts.3"}]}
execute if entity @s[scores={GBHDialog=96}] as @a at @s run playsound luigis_mansion:entity.e_gadd.talk.yahmum_bah_poheh_hap_poh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=264}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.portrait_ghosts.4"}]}
execute if entity @s[scores={GBHDialog=264}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.portrait_ghosts.4.more"}]}
execute if entity @s[scores={GBHDialog=264}] as @a at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_oh_tohmah_tahmehno_tahkeh_bohh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=384}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.portrait_ghosts.5"}]}
execute if entity @s[scores={GBHDialog=384}] as @a at @s run playsound luigis_mansion:entity.e_gadd.talk.oui_soh_suu_suhm_ck_ck neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=472}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.portrait_ghosts.6"}]}
execute if entity @s[scores={GBHDialog=472}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.portrait_ghosts.6.more"}]}
execute if entity @s[scores={GBHDialog=472}] as @a at @s run playsound luigis_mansion:entity.e_gadd.talk.oh_tohmah_poheh_jeemee_jeemee_pen_pen neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=608}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.portrait_ghosts.7"}]}
execute if entity @s[scores={GBHDialog=608}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.portrait_ghosts.7.more"}]}
execute if entity @s[scores={GBHDialog=608}] as @a at @s run playsound luigis_mansion:entity.e_gadd.talk.oui_ohyah_yahmam_bahh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=688}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.portrait_ghosts.8","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=688}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.portrait_ghosts.8.more"}]}
execute if entity @s[scores={GBHDialog=688}] as @a at @s run playsound luigis_mansion:entity.e_gadd.talk.ohmayah_luigi neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=776}] as @a run function luigis_mansion:other/music/set/silence
execute if entity @s[scores={GBHDialog=776}] as @a[gamemode=!spectator,tag=gameboy_horror,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
scoreboard players set @s[scores={GBHDialog=776}] GBHCall 0
scoreboard players set @s[scores={GBHDialog=776}] GBHWait 0
scoreboard players reset @s[scores={GBHDialog=776}] GBHDialog