execute unless score #ball_room_lamp_1 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:17,tags:["drop_loot"]}
execute unless score #ball_room_lamp_1 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["ball_room_bejeweled_chandelier_1"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"ball_room_bejeweled_chandelier_1",contents:{luigis_mansion:{gold_coin:15,bill:15}}}
execute unless score #ball_room_lamp_1 Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/d50_p15
execute unless data storage luigis_mansion:data furniture.loot positioned 704.0 15 -46.0 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 704.0 14 -46.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #ball_room_lamp_1 Searched 1
data remove storage luigis_mansion:data furniture