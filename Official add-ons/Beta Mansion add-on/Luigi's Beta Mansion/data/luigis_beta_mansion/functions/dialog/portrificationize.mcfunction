scoreboard players add @s Dialog 1
tag @s[scores={Dialog=1}] add nod
execute if entity @s[scores={Dialog=1..527}] as @a[tag=same_room,gamemode=!spectator,scores={IdleTime=0..},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
scoreboard players set @s[scores={Dialog=1}] AnimationProg 0
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_beta_mansion:dialog.portrificationize.1","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_beta_mansion:dialog.portrificationize.1.more"}]}
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:entity.e_gadd.talk.ohmoogah_luigi_odoh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=96}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_beta_mansion:dialog.portrificationize.2"}]}
execute if entity @s[scores={Dialog=96}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_beta_mansion:dialog.portrificationize.2.more"}]}
execute if entity @s[scores={Dialog=96}] run playsound luigis_mansion:entity.e_gadd.talk.soh_suu_suhm_ehdeedee_ck_ck_suku_suku neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=376}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_beta_mansion:dialog.portrificationize.3"}]}
execute if entity @s[scores={Dialog=376}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_beta_mansion:dialog.portrificationize.3.more"}]}
execute if entity @s[scores={Dialog=376}] run playsound luigis_mansion:entity.e_gadd.talk.hmmm_nohjeebeedoggy_oui_ohmoogah neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=464}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_beta_mansion:dialog.portrificationize.4","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=464}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_beta_mansion:dialog.portrificationize.4.more"}]}
execute if entity @s[scores={Dialog=464}] run playsound luigis_mansion:entity.e_gadd.talk.orohroh_odoh_pahn_pahn neutral @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={Dialog=528}] remove nod
tag @s[scores={Dialog=528}] add ending
tag @s[scores={Dialog=528}] remove portrificationize_dialog
execute if entity @s[scores={Dialog=528}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
scoreboard players set @s[scores={Dialog=528}] AnimationProg 0
scoreboard players set @s[tag=!portrificationize_dialog] Dialog 0