execute unless score #projection_room_lamp_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:48,tags:["drop_loot"]}
execute unless score #projection_room_lamp_2 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["projection_room_film_set_lamp_2"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"projection_room_film_set_lamp_2",contents:{luigis_mansion:{gold_coin:5}}}
execute unless score #projection_room_lamp_2 Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/d50_p15
execute unless data storage luigis_mansion:data furniture.loot positioned 681 16 35 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 681 15 35 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #projection_room_lamp_2 Searched 1
data remove storage luigis_mansion:data furniture