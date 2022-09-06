execute if entity @e[tag=orville,tag=dialog,scores={Dialog=60}] run scoreboard players set @a TwinsChoice 1
scoreboard players set @e[tag=orville,tag=dialog,scores={Dialog=60}] Dialog 277
execute if entity @e[tag=orville,tag=dialog,scores={Dialog=333}] run teleport @a 739 20 44 -90 0
execute if entity @e[tag=orville,tag=dialog,scores={Dialog=333}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.henry","color":"green"},{"translate":"luigis_mansion:dialog.twins.game.1"}]}
execute if entity @e[tag=orville,tag=dialog,scores={Dialog=333}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.henry","color":"green"},{"translate":"luigis_mansion:dialog.twins.game.1.more"}]}
execute if entity @e[tag=orville,tag=dialog,scores={Dialog=333}] run function luigis_mansion_3ds_remake:room/hidden/the_twins_room/wave_5