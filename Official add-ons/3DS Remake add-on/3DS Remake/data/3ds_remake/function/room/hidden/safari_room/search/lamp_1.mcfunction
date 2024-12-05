execute unless score #safari_room_lamp_1 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:50,tags:["drop_loot"]}
execute unless score #safari_room_lamp_1 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["safari_room_leopard_skin_decorated_lamp_1"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"safari_room_leopard_skin_decorated_lamp_1",contents:{luigis_mansion:{gold_coin:5}}}
execute unless score #safari_room_lamp_1 Searched matches 1 as @e[tag=luigi] if score #safari_room_lamp_1 SearcherID = @s ID run tag @s add searcher
execute unless score #safari_room_lamp_1 Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/health_dependent_1
execute unless score #safari_room_lamp_1 Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 739 34 -40 run function luigis_mansion:blocks/dust
execute unless data storage luigis_mansion:data furniture.loot positioned 751 34 -40 run function luigis_mansion:blocks/dust_no_sound
execute if data storage luigis_mansion:data furniture.loot positioned 739 33 -40 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #safari_room_lamp_1 Searched 1
data remove storage luigis_mansion:data furniture