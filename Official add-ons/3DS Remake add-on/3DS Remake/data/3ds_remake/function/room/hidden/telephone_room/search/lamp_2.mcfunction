execute unless score #telephone_room_lamp_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:56,tags:["drop_loot"]}
execute unless score #telephone_room_lamp_2 Searched matches 1 as @e[tag=luigi] if score #telephone_room_lamp_2 SearcherID = @s ID run tag @s add searcher
execute unless score #telephone_room_lamp_2 Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/p50
execute unless score #telephone_room_lamp_2 Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 744 34 9 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 744 33 9 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #telephone_room_lamp_2 Searched 1
data remove storage luigis_mansion:data furniture