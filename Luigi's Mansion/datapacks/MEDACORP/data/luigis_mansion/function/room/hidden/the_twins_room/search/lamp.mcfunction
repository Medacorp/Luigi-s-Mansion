execute unless score #the_twins_room_lamp Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:49,tags:["drop_loot"]}
execute unless score #the_twins_room_lamp Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["the_twins_room_star_lamp"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"the_twins_room_star_lamp",contents:{luigis_mansion:{gold_coin:5,bill:5}}}
execute unless score #the_twins_room_lamp Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/d50_m10_p10
execute unless data storage luigis_mansion:data furniture.loot positioned 743 25 -25 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 743 24 -25 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #the_twins_room_lamp Searched 1
data remove storage luigis_mansion:data furniture