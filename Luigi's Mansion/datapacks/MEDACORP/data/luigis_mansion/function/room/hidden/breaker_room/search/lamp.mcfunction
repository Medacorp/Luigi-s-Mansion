execute unless score #breaker_room_lamp Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:57,tags:["drop_loot"]}
execute unless score #breaker_room_lamp Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["breaker_room_uncovered_lightbulb"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"breaker_room_uncovered_lightbulb",contents:{luigis_mansion:{gold_coin:5}}}
execute unless score #breaker_room_lamp Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/d50_m10_p10
execute unless data storage luigis_mansion:data furniture.loot positioned 693 7 67 run function luigis_mansion:blocks/dust
execute unless data storage luigis_mansion:data furniture.loot positioned 705 7 67 run function luigis_mansion:blocks/dust_no_sound
execute if data storage luigis_mansion:data furniture.loot positioned 693 6 67 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #breaker_room_lamp Searched 1
data remove storage luigis_mansion:data furniture