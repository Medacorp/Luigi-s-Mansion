execute unless score #safari_room_table Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:50,tags:["drop_loot"]}
execute unless score #safari_room_table Searched matches 1 as @e[tag=luigi] if score #safari_room_table SearcherID = @s ID run tag @s add searcher
execute unless score #safari_room_table Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/m30
execute unless score #safari_room_table Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 743 30 71 run function luigis_mansion:blocks/dust
execute unless data storage luigis_mansion:data furniture.loot positioned 747 30 71 run function luigis_mansion:blocks/dust_no_sound
execute if data storage luigis_mansion:data furniture.loot positioned 743 30 70 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #safari_room_table Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=743.5,y=29,z=71.5,distance=..0.7,tag=ghost] add spawn