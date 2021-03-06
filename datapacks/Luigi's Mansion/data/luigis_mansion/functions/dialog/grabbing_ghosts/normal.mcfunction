scoreboard players set #freeze_timer Selected 1
scoreboard players add @s GBHDialog 1
execute if entity @s[scores={GBHDialog=1..447}] as @a[gamemode=!spectator,tag=!gameboy_horror,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/gameboy_horror
execute if entity @s[scores={GBHDialog=1..}] as @a run function luigis_mansion:other/music/set/gameboy_horror
execute if entity @s[scores={GBHDialog=1}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.grabbing_ghosts.1"}]}
execute if entity @s[scores={GBHDialog=1}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.grabbing_ghosts.1.more"}]}
execute if entity @s[scores={GBHDialog=1}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohyah_squirtbottlelaugh_bohh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=144}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.grabbing_ghosts.2"}]}
execute if entity @s[scores={GBHDialog=144}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.grabbing_ghosts.2.more"}]}
execute if entity @s[scores={GBHDialog=144}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mee_ohyah_mee neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=232}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.grabbing_ghosts.3"}]}
execute if entity @s[scores={GBHDialog=232}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_oui_oohmakah_tahmentahkeh neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=328}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.grabbing_ghosts.4","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=328}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.grabbing_ghosts.4.more"}]}
execute if entity @s[scores={GBHDialog=328}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.odoh_luigi neutral @s ~ ~ ~ 1
execute if entity @s[scores={GBHDialog=448}] as @a run function luigis_mansion:other/music/set/silence
execute if entity @s[scores={GBHDialog=448}] as @a[gamemode=!spectator,tag=gameboy_horror,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
scoreboard players set @s[scores={GBHDialog=448}] GBHCall 0
scoreboard players set @s[scores={GBHDialog=448}] GBHWait 0
scoreboard players reset @s[scores={GBHDialog=448}] GBHDialog