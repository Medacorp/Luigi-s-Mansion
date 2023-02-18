scoreboard players add @s Dialog 1
tag @s[scores={Dialog=1..}] add ghost_portrificationizer_room_dialog
tag @s[scores={Dialog=1..}] add nod
execute if entity @s[scores={Dialog=1..625}] as @a[tag=same_room,gamemode=!spectator,scores={IdleTime=0..},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
scoreboard players set @s[scores={Dialog=1}] AnimationProgress 0
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.1"}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.1.more"}]}
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:entity.e_gadd.talk.yahmum_bah_poheh_hap_poh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=176}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.2"}]}
execute if entity @s[scores={Dialog=176}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.2.more"}]}
execute if entity @s[scores={Dialog=176}] run playsound luigis_mansion:entity.e_gadd.talk.keeyehroo_suu_suku_suku_ck_ck neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=328}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.3"}]}
execute if entity @s[scores={Dialog=328}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.3.more"}]}
execute if entity @s[scores={Dialog=328}] run playsound luigis_mansion:entity.e_gadd.talk.mm_poheh_oyahmah_oydohroh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=528}] run data modify storage luigis_mansion:data rooms.ghost_portrificationizer_room merge value {cleared:1b}
execute if entity @s[scores={Dialog=528}] run advancement grant @a until luigis_mansion:lab/ghost_portrificationizer_room
execute if entity @s[scores={Dialog=528}] if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/game_boy_horror/map/display/lab/ghost_portrificationizer_room
execute if entity @s[scores={Dialog=528}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={Dialog=528}] remove talk
execute if entity @s[scores={Dialog=530}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.0","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=530}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.0.more"}]}
execute if entity @s[scores={Dialog=530}] run playsound luigis_mansion:entity.e_gadd.talk.odoh_luigi neutral @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=626}] Dialog 0
execute unless entity @e[tag=same_room,tag=!spectator,distance=..7,limit=1] run tag @s remove talk
scoreboard players set @s[tag=!talk] Dialog 0
tag @s[tag=!talk] remove nod
tag @s[tag=!talk] remove ghost_portrificationizer_room_dialog
scoreboard players set @s[tag=!talk] AnimationProgress 0