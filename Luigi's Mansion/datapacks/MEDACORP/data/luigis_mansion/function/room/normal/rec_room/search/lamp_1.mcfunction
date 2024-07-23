execute unless score #rec_room_lamp_1 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:32,tags:["drop_loot"]}
execute unless score #rec_room_lamp_1 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["rec_room_caged_lamp_1"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"rec_room_caged_lamp_1",contents:{luigis_mansion:{gold_bar:1}}}
execute unless score #rec_room_lamp_1 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/d50_m10_p5
execute unless data storage luigis_mansion:data furniture.loot positioned 643 16 -38 run function luigis_mansion:blocks/dust
execute unless data storage luigis_mansion:data furniture.loot positioned 633 16 -38 run function luigis_mansion:blocks/dust_no_sound
execute if data storage luigis_mansion:data furniture.loot positioned 643 15 -38 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #rec_room_lamp_1 Searched 1
data remove storage luigis_mansion:data furniture