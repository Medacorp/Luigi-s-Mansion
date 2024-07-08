execute store result score #temp ID run data get storage luigis_mansion:data dialogs[0].collecting_player
execute as @a[tag=same_room] if score @s ID = #temp ID run tag @s add collecting_player
scoreboard players reset #temp ID

execute if entity @a[tag=collecting_player,scores={Shrunk=1..},limit=1] run scoreboard players add #dialog Dialog 1
scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 70.. run scoreboard players set #dialog Dialog -1
tag @a[tag=same_room] remove collecting_player