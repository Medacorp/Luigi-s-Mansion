execute unless entity @a[scores={LastRoom=49},limit=1] run function #luigis_mansion:room/hidden/the_twins_room/reset
execute as @e[scores={Room=49},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #the_twins_room Vacuumables

execute if score #the_twins_room Wave matches 3 if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.henry","color":"green"},{"translate":"luigis_mansion:dialog.twins.game.1"}]}
execute if score #the_twins_room Wave matches 3 if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.henry","color":"green"},{"translate":"luigis_mansion:dialog.twins.game.1.more"}]}
execute if score #the_twins_room Wave matches 3..7 run tag @e[scores={Room=49},type=!minecraft:player,tag=!model_piece] add remove_from_existence
execute if score #the_twins_room Wave matches 3..7 run scoreboard players set #the_twins_room Wave 4
setblock 738 20 -25 minecraft:air
setblock 742 20 -31 minecraft:air
setblock 747 20 -28 minecraft:air
setblock 747 20 -22 minecraft:air
setblock 742 20 -19 minecraft:air
scoreboard players reset #the_twins_room_box_1 Searched
scoreboard players reset #the_twins_room_box_2 Searched
scoreboard players reset #the_twins_room_box_3 Searched
scoreboard players reset #the_twins_room_box_4 Searched
scoreboard players reset #the_twins_room_box_5 Searched