execute unless score #clockwork_room_puppet_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:62,tags:["drop_loot"]}
execute unless score #clockwork_room_puppet_2 Searched matches 1 as @e[tag=luigi] if score #clockwork_room_puppet_2 SearcherID = @s ID run tag @s add searcher
execute unless score #clockwork_room_puppet_2 Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/p50
execute unless score #clockwork_room_puppet_2 Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 689.0 122 -7.0 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 689 123 -6 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #clockwork_room_puppet_2 Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=688.5,y=122,z=-6.5,distance=..0.7,tag=ghost,tag=hidden] add spawn