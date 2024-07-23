execute unless score #butlers_room_lamp Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:23,tags:["drop_loot"]}
execute unless score #butlers_room_lamp Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["butlers_room_chain_suspended_lamp"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"butlers_room_chain_suspended_lamp",contents:{luigis_mansion:{bill:5}}}
execute unless score #butlers_room_lamp Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/d50_m10_p5
execute unless data storage luigis_mansion:data furniture.loot positioned 744 16 63 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 744 15 63 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #butlers_room_lamp Searched 1
data remove storage luigis_mansion:data furniture