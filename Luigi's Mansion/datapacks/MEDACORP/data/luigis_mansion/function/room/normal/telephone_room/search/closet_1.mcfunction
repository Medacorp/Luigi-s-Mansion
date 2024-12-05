execute unless score #telephone_room_closet_1 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:56,tags:["drop_loot"]}
execute unless score #telephone_room_closet_1 Searched matches 1 as @e[tag=luigi] if score #telephone_room_closet_1 SearcherID = @s ID run tag @s add searcher
execute unless score #telephone_room_closet_1 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/m50
execute unless score #telephone_room_closet_1 Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 738 29 30.0 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 739 29 30.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #telephone_room_closet_1 Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=738.5,y=29,z=29.5,distance=..0.7,tag=ghost,tag=hidden] add spawn