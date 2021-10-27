scoreboard players set #freeze_timer Selected 1
scoreboard players add @s GBHDialog 1
execute if entity @s[scores={GBHDialog=1..}] as @a unless entity @s[scores={MusicGroup=0,MusicType=19}] run function luigis_mansion:other/music/set/gameboy_horror
execute if entity @s[scores={GBHDialog=1}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_3_key.1"}]}
execute if entity @s[scores={GBHDialog=16}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_3_key.2","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=16}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_3_key.2.more"}]}
execute if entity @s[scores={GBHDialog=72}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_3_key.3"}]}
execute if entity @s[scores={GBHDialog=72}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_3_key.3.more"}]}
execute if entity @s[scores={GBHDialog=152}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_3_key.4"}]}
execute if entity @s[scores={GBHDialog=152}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_3_key.4.more"}]}
execute if entity @s[scores={GBHDialog=232}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_3_key.5"}]}
execute if entity @s[scores={GBHDialog=232}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_3_key.5.more"}]}
execute if entity @s[scores={GBHDialog=296}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_3_key.6"}]}
execute if entity @s[scores={GBHDialog=384}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_3_key.7"}]}
execute if entity @s[scores={GBHDialog=440}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.area_3_key.8"}]}
execute if entity @s[scores={GBHDialog=504}] as @a run function luigis_mansion:room/ghost_portrificationizer_room/warp_to
execute if entity @s[scores={GBHDialog=506},advancements={luigis_mansion:lab/ghost_portrificationizer_room=true}] run tag @e[tag=e_gadd,scores={Room=-3},limit=1] add return_dialog
execute if entity @s[scores={GBHDialog=506},advancements={luigis_mansion:lab/ghost_portrificationizer_room=false}] run tag @e[tag=e_gadd,scores={Room=-3},limit=1] add talk
scoreboard players set @s[scores={GBHDialog=506}] GBHCall 0
scoreboard players set @s[scores={GBHDialog=506}] GBHWait 0
scoreboard players reset @s[scores={GBHDialog=506}] GBHDialog