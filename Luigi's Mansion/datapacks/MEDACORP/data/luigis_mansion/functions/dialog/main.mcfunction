execute store result score #dialog Dialog run data get storage luigis_mansion:data dialogs[0].progress
execute if data storage luigis_mansion:data dialogs[0].room store result score #temp Room run data get storage luigis_mansion:data dialogs[0].room
execute if data storage luigis_mansion:data dialogs[0].room as @e[tag=!model_piece,tag=!reflection,tag=!in_dialog] run function luigis_mansion:main/get_same_room
execute unless data storage luigis_mansion:data dialogs[0].room run tag @e[tag=!model_piece,tag=!reflection,tag=!in_dialog] add same_room
scoreboard players reset #temp Room
execute as @a[tag=same_room] run function luigis_mansion:dialog/players_pre_tick
execute as @e[type=!minecraft:player,tag=same_room] run function luigis_mansion:dialog/entities_pre_tick
execute if entity @a[tag=same_room,limit=1] if entity @a[tag=!same_room,limit=1] run scoreboard players set #freeze_timer Selected 0
execute at @a[tag=same_room,limit=1] run function luigis_mansion:dialog/tick with storage luigis_mansion:data dialogs[0].name
execute store result storage luigis_mansion:data dialogs[0].progress int 1 run scoreboard players get #dialog Dialog
execute if entity @a[tag=same_room,limit=1] if score #dialog Dialog matches 0.. run data modify storage luigis_mansion:data dialogs append from storage luigis_mansion:data dialogs[0]
execute unless entity @a[tag=same_room,limit=1] run data modify storage luigis_mansion:data dialogs append from storage luigis_mansion:data dialogs[0]
data remove storage luigis_mansion:data dialogs[0]
execute as @e[tag=same_room] run function luigis_mansion:dialog/entities_post_tick
scoreboard players remove #temp Dialog 1
execute if score #temp Dialog matches 1.. run function luigis_mansion:dialog/main