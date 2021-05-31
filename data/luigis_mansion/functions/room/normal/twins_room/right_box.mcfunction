execute unless score #temp Time matches 1 if entity @e[tag=orville,limit=1] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.henry","color":"green"},{"translate":"luigis_mansion:dialog.twins.game.3"}]}
execute unless score #temp Time matches 1 if entity @e[tag=orville,limit=1] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.henry","color":"green"},{"translate":"luigis_mansion:dialog.twins.game.3.more"}]}
execute if entity @e[tag=orville,limit=1] run function luigis_mansion:spawn_entities/portrait_ghost/henry
tag @e[distance=..0.7,tag=henry] add hide_and_seek
execute unless score #temp Time matches 1 run tag @e[distance=..0.7,tag=henry] add next_wave

execute unless score #temp Time matches 1 unless entity @e[tag=orville,limit=1] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.orville","color":"green"},{"translate":"luigis_mansion:dialog.twins.game.2"}]}
execute unless score #temp Time matches 1 unless entity @e[tag=orville,limit=1] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.orville","color":"green"},{"translate":"luigis_mansion:dialog.twins.game.2.more"}]}
execute unless entity @e[tag=orville,limit=1] run function luigis_mansion:spawn_entities/portrait_ghost/orville
tag @e[distance=..0.7,tag=orville] add hide_and_seek