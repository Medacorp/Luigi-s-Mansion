execute unless score #washroom_1_lamp Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:19,tags:["drop_loot"]}
execute unless score #washroom_1_lamp Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["washroom_1_inside_lantern"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"washroom_1_inside_lantern",contents:{luigis_mansion:{gold_coin:5}}}
execute unless score #washroom_1_lamp Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/d50_m10_p10
execute unless data storage luigis_mansion:data furniture.loot positioned 664 16 -26 run function luigis_mansion:blocks/dust
execute unless data storage luigis_mansion:data furniture.loot positioned 658 16 -261 run function luigis_mansion:blocks/dust_no_sound
execute if data storage luigis_mansion:data furniture.loot positioned 664 15 -26 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #washroom_1_lamp Searched 1
data remove storage luigis_mansion:data furniture