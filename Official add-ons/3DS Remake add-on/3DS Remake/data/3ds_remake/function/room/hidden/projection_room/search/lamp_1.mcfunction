execute unless score #projection_room_lamp_1 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:48,tags:["drop_loot"]}
execute unless score #projection_room_lamp_1 Searched matches 1 as @a if score #projection_room_lamp_1 SearcherID = @s ID run tag @s add searcher
execute unless score #projection_room_lamp_1 Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/health_dependent_2
execute unless score #projection_room_lamp_1 Searched matches 1 run tag @a remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 681 16 41 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 681 15 41 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #projection_room_lamp_1 Searched 1
data remove storage luigis_mansion:data furniture