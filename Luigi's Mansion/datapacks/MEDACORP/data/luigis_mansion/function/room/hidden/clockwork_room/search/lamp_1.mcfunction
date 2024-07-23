execute unless score #clockwork_room_lamp_1 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:62,tags:["drop_loot"]}
execute unless score #clockwork_room_lamp_1 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["clockwork_room_hook_suspended_encased_lamp_1"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"clockwork_room_hook_suspended_encased_lamp_1",contents:{luigis_mansion:{bill:5}}}
execute unless score #clockwork_room_lamp_1 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/d50_m10_p10
execute unless data storage luigis_mansion:data furniture.loot positioned 691 125 -1 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 691 124 -1 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #clockwork_room_lamp_1 Searched 1
data remove storage luigis_mansion:data furniture