tag @e[scores={Room=39},type=!minecraft:player] add remove_from_existence
scoreboard players reset #twins_room Ticking
execute if score #twins_room Wave matches 3 if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.henry","color":"green"},{"translate":"luigis_mansion:dialog.twins.game.1"}]}
execute if score #twins_room Wave matches 3 if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.henry","color":"green"},{"translate":"luigis_mansion:dialog.twins.game.1.more"}]}
execute if score #twins_room Wave matches 3..7 run scoreboard players set #twins_room Wave 4
execute unless score #twins_room Wave matches 4 run scoreboard players reset #twins_room Wave