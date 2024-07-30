execute unless score #mirror_room_table Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:21,tags:["drop_loot"]}
execute unless score #mirror_room_table Searched matches 1 as @a if score #mirror_room_table SearcherID = @s ID run tag @s add searcher
execute unless score #mirror_room_table Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/health_dependent_2
execute unless score #mirror_room_table Searched matches 1 run tag @a remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 741.0 11 -61 run function luigis_mansion:blocks/dust
execute unless data storage luigis_mansion:data furniture.loot positioned 730.0 11 -61 run function luigis_mansion:blocks/dust_no_sound
execute if data storage luigis_mansion:data furniture.loot positioned 741.0 12 -61 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #mirror_room_table Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=740.5,y=11,z=-60.5,distance=..0.7,tag=ghost,tag=hidden] add spawn