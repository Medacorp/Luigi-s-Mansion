execute unless score #astral_hall_table_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:45,tags:["drop_loot"]}
execute unless score #astral_hall_table_2 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/h15
execute unless data storage luigis_mansion:data furniture.loot positioned 662 20 -89 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 663 21 -89 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #astral_hall_table_2 Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=662.5,y=20,z=-88.5,distance=..0.7,tag=ghost,tag=hidden] add spawn