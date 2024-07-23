execute unless score #foyer_lamp Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:1,tags:["drop_loot"]}
execute unless score #foyer_lamp Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["foyer_inside_lantern"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"foyer_inside_lantern",contents:{luigis_mansion:{gold_coin:1}}}
execute unless score #foyer_lamp Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/d50_p15
execute unless data storage luigis_mansion:data furniture.loot positioned 745 17 9.0 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 745 16 9.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #foyer_lamp Searched 1
data remove storage luigis_mansion:data furniture