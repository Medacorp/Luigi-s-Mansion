execute store result score #temp ID run data get storage luigis_mansion:data dialogs[0].collecting_player
execute as @a[tag=same_room] if score @s ID = #temp ID run tag @s add collecting_player
scoreboard players reset #temp ID

execute if entity @a[tag=collecting_player,scores={Shrunk=1..},limit=1] run scoreboard players add #dialog Dialog 1
scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 15 if data storage luigis_mansion:data dialogs[0].music{orchestra:0b} as @a[tag=same_room] run function luigis_mansion:other/music/set/collect_item
execute if score #dialog Dialog matches 15 if data storage luigis_mansion:data dialogs[0].music{orchestra:1b} as @a[tag=same_room] run function luigis_mansion:other/music/set/collect_area_key
execute if score #dialog Dialog matches 69.. run tag @a[tag=same_room] add prevent_item_lock
execute if score #dialog Dialog matches 70.. run scoreboard players set #dialog Dialog -1
tag @a[tag=same_room] remove collecting_player