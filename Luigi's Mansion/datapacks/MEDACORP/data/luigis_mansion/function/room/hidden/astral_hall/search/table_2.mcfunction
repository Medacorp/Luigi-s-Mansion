execute unless score #astral_hall_table_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:45,tags:["drop_loot"]}
execute unless score #astral_hall_table_2 Searched matches 1 as @a if score #astral_hall_table_2 SearcherID = @s ID run tag @s add searcher
execute unless score #astral_hall_table_2 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/m15
execute unless score #astral_hall_table_2 Searched matches 1 run tag @a remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 662 20 104 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 663 21 104 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #astral_hall_table_2 Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=662.5,y=20,z=104.5,distance=..0.7,tag=ghost,tag=hidden] add spawn