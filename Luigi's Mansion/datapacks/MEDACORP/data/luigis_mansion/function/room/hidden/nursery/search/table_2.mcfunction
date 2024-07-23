execute unless score #nursery_table_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:10,tags:["drop_loot"]}
execute unless score #nursery_table_2 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/h10_p10
execute unless data storage luigis_mansion:data furniture.loot positioned 739 20 -40.0 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 739 21 -40.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #nursery_table_2 Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=739.5,y=20,z=-39.5,distance=..0.7,tag=ghost,tag=hidden] add spawn