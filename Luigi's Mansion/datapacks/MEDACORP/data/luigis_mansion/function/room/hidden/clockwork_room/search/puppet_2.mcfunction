execute unless score #clockwork_room_puppet_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:62,tags:["drop_loot"]}
execute unless score #clockwork_room_puppet_2 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/h10_p10
execute unless data storage luigis_mansion:data furniture.loot positioned 689.0 122 23.0 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 689 123 21 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #clockwork_room_puppet_2 Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=688.5,y=122,z=22.5,distance=..0.7,tag=ghost,tag=hidden] add spawn