scoreboard players add @s Dialog 1
tag @s[scores={Dialog=1}] add nod
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.released_boos_talk.1","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.released_boos_talk.1.more"}]}
tag @s[scores={Dialog=72}] remove nod
tag @s[scores={Dialog=72}] add shake
execute if entity @s[scores={Dialog=72}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.released_boos_talk.2"}]}
execute if entity @s[scores={Dialog=160}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.released_boos_talk.3"}]}
tag @s[scores={Dialog=344}] add nod
tag @s[scores={Dialog=344}] remove shake
execute if entity @s[scores={Dialog=344}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.released_boos_talk.4"}]}
execute if entity @s[scores={Dialog=544}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.released_boos_talk.5"}]}
execute if entity @s[scores={Dialog=544}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.released_boos_talk.5.more"}]}
tag @s[scores={Dialog=728}] remove nod
tag @s[scores={Dialog=728}] add shake
execute if entity @s[scores={Dialog=728}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.released_boos_talk.6"}]}
execute if entity @s[scores={Dialog=728}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.released_boos_talk.6.more"}]}
tag @s[scores={Dialog=920}] add nod
tag @s[scores={Dialog=920}] remove shake
execute if entity @s[scores={Dialog=920}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.released_boos_talk.7"}]}
execute if entity @s[scores={Dialog=920}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.released_boos_talk.7.more"}]}
execute if entity @s[scores={Dialog=1080}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.released_boos_talk.8"}]}
execute if entity @s[scores={Dialog=1224}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.released_boos_talk.9","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=1224}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.released_boos_talk.9.more"}]}
execute if entity @s[scores={Dialog=1408}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.released_boos_talk.10"}]}
execute if entity @s[scores={Dialog=1408}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.released_boos_talk.10.more"}]}
execute if entity @s[scores={Dialog=1672}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {released_boos_talk:1b}
execute if entity @s[scores={Dialog=1672}] run function #luigis_mansion:entities/boo/release
tag @s[scores={Dialog=1672}] remove nod
tag @s[scores={Dialog=1672}] add talk
scoreboard players reset @s[scores={Dialog=1672}] Dialog