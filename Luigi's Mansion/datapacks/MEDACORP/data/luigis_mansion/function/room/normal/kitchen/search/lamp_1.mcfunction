execute unless score #kitchen_lamp_1 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:27,tags:["drop_loot"]}
execute unless score #kitchen_lamp_1 Searched matches 1 as @e[tag=luigi] if score #kitchen_lamp_1 SearcherID = @s ID run tag @s add searcher
execute unless score #kitchen_lamp_1 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/m50
execute unless score #kitchen_lamp_1 Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 701 16 88 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 701 15 88 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #kitchen_lamp_1 Searched 1
data remove storage luigis_mansion:data furniture