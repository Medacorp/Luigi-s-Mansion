execute unless score #rec_room_lamp_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:32,tags:["drop_loot"]}
execute unless score #rec_room_lamp_2 Searched matches 1 as @e[tag=luigi] if score #rec_room_lamp_2 SearcherID = @s ID run tag @s add searcher
execute unless score #rec_room_lamp_2 Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/p50
execute unless score #rec_room_lamp_2 Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 643 16 -53 run function luigis_mansion:blocks/dust
execute unless data storage luigis_mansion:data furniture.loot positioned 633 16 -53 run function luigis_mansion:blocks/dust_no_sound
execute if data storage luigis_mansion:data furniture.loot positioned 643 15 -53 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #rec_room_lamp_2 Searched 1
data remove storage luigis_mansion:data furniture