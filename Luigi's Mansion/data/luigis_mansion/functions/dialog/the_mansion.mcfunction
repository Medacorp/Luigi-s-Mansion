scoreboard players add @s Dialog 1
tag @s[scores={Dialog=1}] add nod
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.1","with":[{"selector":"@p[gamemode=!spectator]"},{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 2..4 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.1.more"}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 5.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.1.even_more"}]}
tag @s[scores={Dialog=152}] add listen
tag @s[scores={Dialog=152}] remove nod
execute if entity @s[scores={Dialog=152}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.2"}]}
execute if entity @s[scores={Dialog=152}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.2.more"}]}
tag @s[scores={Dialog=192}] remove listen
tag @s[scores={Dialog=192}] add nod
execute if entity @s[scores={Dialog=192}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.3"}]}
execute if entity @s[scores={Dialog=280}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.4"}]}
execute if entity @s[scores={Dialog=280}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.4.more"}]}
tag @s[scores={Dialog=392}] remove nod
tag @s[scores={Dialog=392}] add shake
execute if entity @s[scores={Dialog=392}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.5"}]}
execute if entity @s[scores={Dialog=392}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.5.more"}]}
execute if entity @s[scores={Dialog=520}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.6"}]}
execute if entity @s[scores={Dialog=520}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.6.more"}]}
execute if entity @s[scores={Dialog=592}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.7"}]}
execute if entity @s[scores={Dialog=592}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.7.more"}]}
execute if entity @s[scores={Dialog=832}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.8"}]}
tag @s[scores={Dialog=1016}] add nod
tag @s[scores={Dialog=1016}] remove shake
execute if entity @s[scores={Dialog=1016}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.9"}]}
execute if entity @s[scores={Dialog=1016}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.9.more"}]}
tag @s[scores={Dialog=1304}] add listen
tag @s[scores={Dialog=1304}] remove nod
execute if entity @s[scores={Dialog=1304}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.10"}]}
execute if entity @s[scores={Dialog=1312}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.11"}]}
tag @s[scores={Dialog=1384}] remove listen
tag @s[scores={Dialog=1384}] add shake
execute if entity @s[scores={Dialog=1384}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.12"}]}
execute if entity @s[scores={Dialog=1384}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.12.more"}]}
tag @s[scores={Dialog=1520}] add nod
tag @s[scores={Dialog=1520}] remove shake
execute if entity @s[scores={Dialog=1520}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.13","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=1520}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.the_mansion.13.more"}]}
execute if entity @s[scores={Dialog=1672}] as @a run function luigis_mansion:entities/e_gadd/to_training
execute if entity @s[scores={Dialog=1672}] run advancement grant @a only luigis_mansion:lab/lab
execute if entity @s[scores={Dialog=1672}] run advancement grant @a only luigis_mansion:lab/underground_lab
execute if entity @s[scores={Dialog=1672}] if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/lab/underground_lab