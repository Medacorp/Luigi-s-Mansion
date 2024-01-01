scoreboard players add @s Dialog 1
tag @s[scores={Dialog=1..}] add ghost_portrificationizer_room_dialog
execute if entity @s[scores={Dialog=1..625}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.1"}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.1.more"}]}
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:entity.e_gadd.talk.yahmum_bah_poheh_hap_poh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=176}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.2"}]}
execute if entity @s[scores={Dialog=176}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.2.more"}]}
execute if entity @s[scores={Dialog=176}] run playsound luigis_mansion:entity.e_gadd.talk.keeyehroo_suu_suku_suku_ck_ck neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=328}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.3"}]}
execute if entity @s[scores={Dialog=328}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.3.more"}]}
execute if entity @s[scores={Dialog=328}] run playsound luigis_mansion:entity.e_gadd.talk.mm_poheh_oyahmah_oydohroh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=528}] run data modify storage luigis_mansion:data rooms.ghost_portrificationizer_room merge value {cleared:1b}
execute if entity @s[scores={Dialog=528}] run tag @a[tag=looking_at_map,nbt={Dimension:"minecraft:overworld"},limit=1] add regenerate_map
execute if entity @s[scores={Dialog=528}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={Dialog=528}] remove talk
execute if entity @s[scores={Dialog=530}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.0","with":[{"type":"selector","selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=530}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.0.more"}]}
execute if entity @s[scores={Dialog=530}] run playsound luigis_mansion:entity.e_gadd.talk.odoh_luigi neutral @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=626}] Dialog 0
execute unless entity @e[tag=same_room,tag=!spectator,distance=..7,limit=1] run tag @s remove talk
scoreboard players set @s[tag=!talk] Dialog 0
data remove entity @s[tag=!talk] data.animation
tag @s[tag=!talk] remove ghost_portrificationizer_room_dialog