execute unless score #astral_hall_lamp Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:45,tags:["drop_loot"]}
execute unless score #astral_hall_lamp Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["astral_hall_astral_chandelier"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"astral_hall_astral_chandelier",contents:{luigis_mansion:{gold_coin:15,bill:15}}}
execute unless score #astral_hall_lamp Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/d50_m10_p5
execute unless data storage luigis_mansion:data furniture.loot positioned 666 24 -82 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 666 23 -82 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #astral_hall_lamp Searched 1
data remove storage luigis_mansion:data furniture