execute unless score #telephone_room_lamp_1 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:56,tags:["drop_loot"]}
execute unless score #telephone_room_lamp_1 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["telephone_room_half_orb_lamp_1"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"telephone_room_half_orb_lamp_1",contents:{luigis_mansion:{gold_coin:5}}}
execute unless score #telephone_room_lamp_1 Searched matches 1 as @e[tag=luigi] if score #telephone_room_lamp_1 SearcherID = @s ID run tag @s add searcher
execute unless score #telephone_room_lamp_1 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/health_dependent_1
execute unless score #telephone_room_lamp_1 Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 744 34 26 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 744 33 26 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #telephone_room_lamp_1 Searched 1
data remove storage luigis_mansion:data furniture