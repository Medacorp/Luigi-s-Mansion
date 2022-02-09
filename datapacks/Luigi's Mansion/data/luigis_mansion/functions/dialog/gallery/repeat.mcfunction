execute if entity @a[scores={EGaddGallChoice=1..},limit=1] run scoreboard players add @s[scores={Dialog=81..}] Dialog 1
scoreboard players add @s[scores={Dialog=..80}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
tag @s[scores={Dialog=1}] add nod
execute if entity @s[scores={Dialog=1}] run scoreboard players set @e[tag=this_model,tag=e_gadd_head,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.gallery.repeat.1","with":[{"selector":"@a[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.gallery.repeat.1.more"}]}
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:entity.e_gadd.talk.luigi_oui neutral @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={Dialog=80}] add listen
tag @s[scores={Dialog=80}] remove nod
execute if entity @s[scores={Dialog=80}] run scoreboard players set @e[tag=this_model,tag=e_gadd_head,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=80}] run tellraw @a[tag=same_room] {"translate":"luigis_mansion:dialog.gallery.where","color":"green","clickEvent":{"action":"run_command","value":"/trigger EGaddGallChoice set 1"},"extra":[{"text":"\n"},{"translate":"luigis_mansion:dialog.gallery.what","clickEvent":{"action":"run_command","value":"/trigger EGaddGallChoice set 2"}},{"text":"\n"},{"translate":"luigis_mansion:dialog.gallery.leave","clickEvent":{"action":"run_command","value":"/trigger EGaddGallChoice set 3"}},{"text":"\n"},{"translate":"luigis_mansion:dialog.gallery.nothing","clickEvent":{"action":"run_command","value":"/trigger EGaddGallChoice set 4"}}]}
execute if entity @s[scores={Dialog=80}] run scoreboard players enable @a[tag=same_room] EGaddGallChoice
tag @s[scores={Dialog=82}] remove listen
tag @s[scores={Dialog=82}] add nod
execute if entity @s[scores={Dialog=82}] run scoreboard players set @e[tag=this_model,tag=e_gadd_head,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=82}] if entity @a[scores={EGaddGallChoice=1..}] as @a[scores={EGaddGallChoice=0}] run trigger EGaddGallChoice set 0
execute if entity @s[scores={Dialog=82}] if entity @a[scores={EGaddGallChoice=1}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.gallery.where.1"}]}
execute if entity @s[scores={Dialog=82}] if entity @a[scores={EGaddGallChoice=1}] run playsound luigis_mansion:entity.e_gadd.talk.oui_soh_suu_suhm_ck_ck_yuuohh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=210}] if score #players Totals matches 1 if entity @a[scores={EGaddGallChoice=1}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.gallery.where.2"}]}
execute if entity @s[scores={Dialog=210}] if score #players Totals matches 2.. if entity @a[scores={EGaddGallChoice=1}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.gallery.where.2.more"}]}
execute if entity @s[scores={Dialog=210}] if entity @a[scores={EGaddGallChoice=1}] run playsound luigis_mansion:entity.e_gadd.talk.oomahkah_oui_soy_soh_ooh_ck_ck neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=426}] if entity @a[scores={EGaddGallChoice=1}] run tag @s remove nod
execute if entity @s[scores={Dialog=426}] if entity @a[scores={EGaddGallChoice=1}] run tag @s add shake
execute if entity @s[scores={Dialog=426}] if entity @a[scores={EGaddGallChoice=1}] run scoreboard players set @e[tag=this_model,tag=e_gadd_head,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=426}] if score #players Totals matches 1 if entity @a[scores={EGaddGallChoice=1}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.gallery.where.3"}]}
execute if entity @s[scores={Dialog=426}] if score #players Totals matches 2.. if entity @a[scores={EGaddGallChoice=1}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.gallery.where.3.more"}]}
execute if entity @s[scores={Dialog=426}] if entity @a[scores={EGaddGallChoice=1}] run playsound luigis_mansion:entity.e_gadd.talk.hmmm_nohjeebeedoggy_ohmoogah neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=514}] if entity @a[scores={EGaddGallChoice=1}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.gallery.where.4"}]}
execute if entity @s[scores={Dialog=514}] if entity @a[scores={EGaddGallChoice=1}] run playsound luigis_mansion:entity.e_gadd.talk.mee_oomahkah_yahboh_yahboh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=722}] if entity @a[scores={EGaddGallChoice=1}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.gallery.where.5"}]}
execute if entity @s[scores={Dialog=722}] if entity @a[scores={EGaddGallChoice=1}] run playsound luigis_mansion:entity.e_gadd.talk.orohroh_odoh_pahn_pahn neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=906}] if entity @a[scores={EGaddGallChoice=1}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.gallery.where.6"}]}
execute if entity @s[scores={Dialog=906}] if entity @a[scores={EGaddGallChoice=1}] run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_suku_suku_oydohroh_odoh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=1218}] if entity @a[scores={EGaddGallChoice=1}] run tag @s add nod
execute if entity @s[scores={Dialog=1218}] if entity @a[scores={EGaddGallChoice=1}] run tag @s remove shake
execute if entity @s[scores={Dialog=1218}] if entity @a[scores={EGaddGallChoice=1}] run scoreboard players set @e[tag=this_model,tag=e_gadd_head,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=1218}] if entity @a[scores={EGaddGallChoice=1}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.gallery.where.7"}]}
execute if entity @s[scores={Dialog=1218}] if entity @a[scores={EGaddGallChoice=1}] run playsound luigis_mansion:entity.e_gadd.talk.yahmum_baah neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=82}] if entity @a[scores={EGaddGallChoice=2}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.gallery.what.1"}]}
execute if entity @s[scores={Dialog=82}] if entity @a[scores={EGaddGallChoice=2}] run playsound luigis_mansion:entity.e_gadd.talk.hap_poh_oomahkah_tatta_tatta neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=202}] if score #players Totals matches 1 if entity @a[scores={EGaddGallChoice=2}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.gallery.what.2"}]}
execute if entity @s[scores={Dialog=202}] if score #players Totals matches 2.. if entity @a[scores={EGaddGallChoice=2}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.gallery.what.2.more"}]}
execute if entity @s[scores={Dialog=202}] if entity @a[scores={EGaddGallChoice=2}] run playsound luigis_mansion:entity.e_gadd.talk.hey_hey_suu_tahmentahkeh_oydohroh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=426}] if score #players Totals matches 1 if entity @a[scores={EGaddGallChoice=2}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.gallery.what.3"}]}
execute if entity @s[scores={Dialog=426}] if score #players Totals matches 2.. if entity @a[scores={EGaddGallChoice=2}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.gallery.what.3.more"}]}
execute if entity @s[scores={Dialog=426}] if entity @a[scores={EGaddGallChoice=2}] run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_hey_hey_suu_dehkooroo_hah neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=546}] if score #players Totals matches 1 if entity @a[scores={EGaddGallChoice=2}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.gallery.what.4"}]}
execute if entity @s[scores={Dialog=546}] if score #players Totals matches 2.. if entity @a[scores={EGaddGallChoice=2}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.gallery.what.4.more"}]}
execute if entity @s[scores={Dialog=546}] if entity @a[scores={EGaddGallChoice=2}] run playsound luigis_mansion:entity.e_gadd.talk.oomahkah_oui_soy_soh_ooh_ck_ck neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=794}] if score #players Totals matches 1 if entity @a[scores={EGaddGallChoice=2}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.gallery.what.5"}]}
execute if entity @s[scores={Dialog=794}] if score #players Totals matches 2.. if entity @a[scores={EGaddGallChoice=2}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.gallery.what.5.more"}]}
execute if entity @s[scores={Dialog=794}] if entity @a[scores={EGaddGallChoice=2}] run playsound luigis_mansion:entity.e_gadd.talk.mee_kehkeh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=834}] if entity @a[scores={EGaddGallChoice=2}] run scoreboard players set @s Dialog 1354
execute if entity @s[scores={Dialog=82}] if entity @a[scores={EGaddGallChoice=3}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.gallery.leave.1"}]}
execute if entity @s[scores={Dialog=82}] if entity @a[scores={EGaddGallChoice=3}] run playsound luigis_mansion:entity.e_gadd.talk.yahboh_yahboh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=106}] if entity @a[scores={EGaddGallChoice=3}] run scoreboard players set @s Dialog 1354
execute if entity @s[scores={Dialog=82}] if entity @a[scores={EGaddGallChoice=4}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.gallery.nothing.1"}]}
execute if entity @s[scores={Dialog=82}] if entity @a[scores={EGaddGallChoice=4}] run playsound luigis_mansion:entity.e_gadd.talk.yahmum_bah neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=98}] if entity @a[scores={EGaddGallChoice=4}] run scoreboard players set @s Dialog 1354
execute if entity @s[scores={Dialog=1354}] if entity @a[scores={EGaddGallChoice=3}] as @a[tag=same_room] run function luigis_mansion:room/underground_lab/warp_to
execute if entity @s[scores={Dialog=1354}] run scoreboard players set @a EGaddGallChoice 0
tag @s[scores={Dialog=1354}] remove talk
execute unless entity @e[tag=same_room,tag=!spectator,distance=..7,limit=1] run tag @s remove talk
execute if entity @s[tag=!talk] run scoreboard players reset @a[scores={EGaddGallChoice=0..}] EGaddGallChoice
scoreboard players set @s[tag=!talk] Dialog 0
tag @s[tag=!talk] remove listen
tag @s[tag=!talk] remove nod
tag @s[tag=!talk] remove shake
execute if entity @s[tag=!talk] run scoreboard players set @e[tag=this_model,tag=e_gadd_head,limit=1] AnimationProg 0