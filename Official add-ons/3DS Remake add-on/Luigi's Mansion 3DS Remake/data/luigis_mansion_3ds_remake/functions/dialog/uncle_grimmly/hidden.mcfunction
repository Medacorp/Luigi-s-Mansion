scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..1239,IdleTime=0..},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/answer_phone
execute if entity @s[scores={Dialog=20}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.unknown","color":"green"},{"translate":"luigis_mansion:dialog.uncle_grimmly.1"}]}
execute if entity @s[scores={Dialog=44}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.uncle_grimmly.2"}]}
execute if entity @s[scores={Dialog=44}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.uncle_grimmly.2.more"}]}
execute if entity @s[scores={Dialog=44}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.gay_roon_ehdeedee_odoh_tahmentahkeh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=164}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.uncle_grimmly.3"}]}
execute if entity @s[scores={Dialog=164}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.uncle_grimmly.3.more"}]}
execute if entity @s[scores={Dialog=164}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soh_suu_suhm_ehdeedee_ck_ck_suku_suku neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=340}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.uncle_grimmly.4"}]}
execute if entity @s[scores={Dialog=340}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohyah_mee neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=360}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.uncle_grimmly.5"}]}
execute if entity @s[scores={Dialog=360}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.uncle_grimmly.5.more"}]}
execute if entity @s[scores={Dialog=360}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oui_soh_suu_suhm_ck_ck neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=464}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.uncle_grimmly.6"}]}
execute if entity @s[scores={Dialog=464}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.suku_suku_oui_soh_suu_suhm_tahmehno_tahkeh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=648}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.uncle_grimmly.7"}]}
execute if entity @s[scores={Dialog=648}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.uncle_grimmly.7.more"}]}
execute if entity @s[scores={Dialog=648}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oh_tohmah_poheh_jeemee_jeemee_pen_pen neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=904}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.uncle_grimmly.8"}]}
execute if entity @s[scores={Dialog=904}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hey_hey_nohjeebeedoggy_oomahkah_ooh_ooh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=1144}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.uncle_grimmly.9","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=1144}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.uncle_grimmly.9.more"}]}
execute if entity @s[scores={Dialog=1144}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi_oui neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=1264}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.ghost.laugh hostile @s ~ ~ ~ 3
execute if entity @s[scores={Dialog=1264}] run function luigis_mansion_3ds_remake:room/hidden/telephone_room/blackout
execute if entity @s[scores={Dialog=1264}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {telephone_3:1b}
execute if entity @s[scores={Dialog=1264},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={Dialog=1264}] remove uncle_grimmly_dialog
scoreboard players set @s[scores={Dialog=1264}] Dialog 0