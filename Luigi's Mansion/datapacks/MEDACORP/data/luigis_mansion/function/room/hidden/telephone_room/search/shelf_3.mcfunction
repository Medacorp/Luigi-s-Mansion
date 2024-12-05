execute unless score #telephone_room_shelf_3 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:56,tags:["drop_loot"]}
execute unless score #telephone_room_shelf_3 Searched matches 1 as @e[tag=luigi] if score #telephone_room_shelf_3 SearcherID = @s ID run tag @s add searcher
execute unless score #telephone_room_shelf_3 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/h10_p20
execute unless score #telephone_room_shelf_3 Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 738 32 3 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 739 32 3 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #telephone_room_shelf_3 Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=738.5,y=32,z=3.5,distance=..0.7,tag=ghost,tag=hidden] add spawn