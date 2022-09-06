scoreboard players add @s[scores={Dialog=1..}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
scoreboard players operation #temp Dialog = @s Dialog
scoreboard players operation #temp Dialog %= #10 Constants
tag @s[scores={Dialog=1}] add nod
execute if entity @s[scores={Dialog=1..2111}] as @a[tag=same_room,gamemode=!spectator,scores={IdleTime=0..},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
scoreboard players set @s[scores={Dialog=1}] AnimationProg 0
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.future_e_gadd.1","with":[{"selector":"@a[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.future_e_gadd.1.more"}]}
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:entity.e_gadd.talk.luigi neutral @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={Dialog=56}] remove nod
execute if entity @s[scores={Dialog=56}] as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/scare/normal
scoreboard players set @s[scores={Dialog=56}] AnimationProg 0
execute if entity @s[scores={Dialog=56..168}] as @a[tag=same_room] run function luigis_mansion:other/music/set/non_overwritten_silence
execute if entity @s[scores={Dialog=56..168}] if score #temp Dialog matches 0..4 run scoreboard players set @a[tag=same_room] ForceScreen 1
execute if entity @s[scores={Dialog=169..1564}] run scoreboard players set @a[tag=same_room] ForceScreen 1
tag @s[scores={Dialog=96}] add listen
scoreboard players set @s[scores={Dialog=96}] AnimationProg 0
execute if entity @s[scores={Dialog=96}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.future_e_gadd.2"}]}
execute if entity @s[scores={Dialog=96}] run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_hey_hey_suu_dehkooroo_hah neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=168..1564}] as @a[tag=same_room] run function luigis_mansion_3ds_remake:other/music/set/future_e_gadd
execute if entity @s[scores={Dialog=208}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion_3ds_remake:entity.future_e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.future_e_gadd.3"}]}
execute if entity @s[scores={Dialog=208}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.shortlaugh neutral @s ~ ~ ~ 1
tag @s[scores={Dialog=228}] remove listen
tag @s[scores={Dialog=228}] add hit
execute if entity @s[scores={Dialog=228}] as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/scare/bash_no_move
scoreboard players set @s[scores={Dialog=228}] AnimationProg 0
tag @s[scores={Dialog=248}] remove hit
tag @s[scores={Dialog=248}] add sitting
scoreboard players set @s[scores={Dialog=248}] AnimationProg 0
execute if entity @s[scores={Dialog=240}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion_3ds_remake:entity.future_e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.future_e_gadd.4"}]}
execute if entity @s[scores={Dialog=240}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mm_oydohroh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=296}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion_3ds_remake:entity.future_e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.future_e_gadd.5"}]}
execute if entity @s[scores={Dialog=296}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_ohmoogah neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=336}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion_3ds_remake:entity.future_e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.future_e_gadd.6"}]}
execute if entity @s[scores={Dialog=336}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.longlaugh neutral @s ~ ~ ~ 1
tag @s[scores={Dialog=356}] remove sitting
tag @s[scores={Dialog=356}] add get_up
scoreboard players set @s[scores={Dialog=356}] AnimationProg 0
tag @s[scores={Dialog=376}] remove get_up
scoreboard players set @s[scores={Dialog=376}] AnimationProg 0
execute if entity @s[scores={Dialog=408}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion_3ds_remake:entity.future_e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.future_e_gadd.7"}]}
execute if entity @s[scores={Dialog=408}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oh_tohmah_poheh_jeemee_jeemee neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=480}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion_3ds_remake:entity.future_e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.future_e_gadd.8"}]}
execute if entity @s[scores={Dialog=480}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.yahmum_bah_poheh_hap_poh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=536}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion_3ds_remake:entity.future_e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.future_e_gadd.9","with":[{"selector":"@a[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=536}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion_3ds_remake:entity.future_e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.future_e_gadd.9.more"}]}
execute if entity @s[scores={Dialog=536}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mah_mah_mah_luigi_oui neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=624..663}] run particle minecraft:flash 784 77 12 0 0 0 0 2 force
execute if entity @s[scores={Dialog=643}] positioned 784 77 12 run function luigis_mansion_3ds_remake:spawn_entities/gooigi/lab
execute if entity @s[scores={Dialog=724}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion_3ds_remake:entity.future_e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.future_e_gadd.10"}]}
execute if entity @s[scores={Dialog=724}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hey_hey_suu_dehkooroo_hah neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=812}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion_3ds_remake:entity.future_e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.future_e_gadd.11"}]}
execute if entity @s[scores={Dialog=812}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion_3ds_remake:entity.future_e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.future_e_gadd.11.more"}]}
execute if entity @s[scores={Dialog=812}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.gay_roon_ehdeedee_odoh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=924}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion_3ds_remake:entity.future_e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.future_e_gadd.12"}]}
execute if entity @s[scores={Dialog=924}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oui_soh_suu_suhm_ck_ck neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=1012}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion_3ds_remake:entity.future_e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.future_e_gadd.13"}]}
execute if entity @s[scores={Dialog=1012}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.suku_suku_ck_ck neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=1068}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion_3ds_remake:entity.future_e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.future_e_gadd.14"}]}
execute if entity @s[scores={Dialog=1068}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion_3ds_remake:entity.future_e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.future_e_gadd.14.more"}]}
execute if entity @s[scores={Dialog=1068}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.keeyehroo_suu_suku_suku neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=1180}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion_3ds_remake:entity.future_e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.future_e_gadd.15"}]}
execute if entity @s[scores={Dialog=1180}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oh_tohmah_poheh_jeemee_jeemee neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=1244}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion_3ds_remake:entity.future_e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.future_e_gadd.16"}]}
execute if entity @s[scores={Dialog=1244}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_hey_hey_suu_dehkooroo_hah neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=1332}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion_3ds_remake:entity.future_e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.future_e_gadd.17"}]}
execute if entity @s[scores={Dialog=1332}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oh_tohmah_poheh_jeemee_jeemee_pen_pen neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=1428}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion_3ds_remake:entity.future_e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.future_e_gadd.18"}]}
execute if entity @s[scores={Dialog=1428}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.yahmum_bah_poheh_hap_poh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=1532}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion_3ds_remake:entity.future_e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.future_e_gadd.19"}]}
execute if entity @s[scores={Dialog=1532}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohmoogah_luigi_odoh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=1572}] as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
tag @s[scores={Dialog=1592}] add nod
scoreboard players set @s[scores={Dialog=1592}] AnimationProg 0
execute if entity @s[scores={Dialog=1592}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.future_e_gadd.20"}]}
execute if entity @s[scores={Dialog=1592}] run playsound luigis_mansion:entity.e_gadd.talk.ohyah_ohyahmah_hey_hey_oui neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=1704}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.future_e_gadd.21"}]}
execute if entity @s[scores={Dialog=1704}] run playsound luigis_mansion:entity.e_gadd.talk.keeyehroo_suu_suku_suku neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=1912}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.future_e_gadd.22","with":[{"selector":"@a[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=1912}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion_3ds_remake:dialog.future_e_gadd.22.more"}]}
execute if entity @s[scores={Dialog=1912}] run playsound luigis_mansion:entity.e_gadd.talk.oui_oydohroh_tahmentahkeh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=2112}] run data modify storage luigis_mansion_3ds_remake:data spoke_with_future_e_gadd set value 1b
execute if entity @s[scores={Dialog=2112}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={Dialog=2112}] add talk
scoreboard players reset @s[scores={Dialog=2112}] Dialog
scoreboard players reset #temp Dialog