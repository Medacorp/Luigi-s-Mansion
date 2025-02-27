execute store result score #temp ID run data get storage luigis_mansion:data memory
scoreboard players set #temp2 Time 0
function luigis_mansion:entities/player/memory/get with entity @s
execute if score #temp ID matches 0 run scoreboard players set #temp Time 37129
execute if score #temp ID matches 1 run scoreboard players set #temp Time 4882943
execute if score #temp ID matches 2 run scoreboard players set #temp Time 16726271
execute if score #temp ID matches 3 run scoreboard players set #temp Time 16756001
execute if score #temp ID matches 4..7 run scoreboard players set #temp2 Time 1
execute if score #temp ID matches 4 run scoreboard players set #temp Time 37129
execute if score #temp ID matches 5 run scoreboard players set #temp Time 4882943
execute if score #temp ID matches 6 run scoreboard players set #temp Time 16726271
execute if score #temp ID matches 7 run scoreboard players set #temp Time 16756001
execute if score #temp ID matches 8.. if predicate luigis_mansion:luigi/alternate_skin_chance run scoreboard players set #temp2 Time 1
execute if score #temp ID matches 8.. run function luigis_mansion:entities/player/memory/color/generate
execute store result storage luigis_mansion:data my_memory.id int 1 run scoreboard players add #temp ID 1
scoreboard players reset #temp ID
execute store result storage luigis_mansion:data my_memory.model.color int 1 run scoreboard players get #temp Time
execute store result storage luigis_mansion:data my_memory.model.variant byte 1 run scoreboard players get #temp2 Time
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time