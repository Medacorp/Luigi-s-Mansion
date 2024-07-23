execute unless score #hidden_room_lamp Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:24,tags:["drop_loot"]}
execute unless score #hidden_room_lamp Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["hidden_room_bejeweled_chandelier"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"hidden_room_bejeweled_chandelier",contents:{luigis_mansion:{bill:20}}}
execute unless score #hidden_room_lamp Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/d50_m10_p10
execute unless data storage luigis_mansion:data furniture.loot positioned 744.0 16 -24.0 run function luigis_mansion:blocks/dust
execute unless data storage luigis_mansion:data furniture.loot positioned 755.0 16 -24.0 run function luigis_mansion:blocks/dust_no_dust
execute if data storage luigis_mansion:data furniture.loot positioned 744.0 15 -24.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #hidden_room_lamp Searched 1
data remove storage luigis_mansion:data furniture