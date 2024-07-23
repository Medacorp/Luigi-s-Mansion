execute unless score #sealed_room_lamp Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:66,tags:["drop_loot"]}
execute unless score #sealed_room_lamp Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["sealed_room_bejeweled_chandelier"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"sealed_room_bejeweled_chandelier",contents:{luigis_mansion:{bill:5}}}
execute unless score #sealed_room_lamp Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/d50_m10_p5
execute unless data storage luigis_mansion:data furniture.loot positioned 702.0 23 -72.0 run function luigis_mansion:blocks/dust
execute unless data storage luigis_mansion:data furniture.loot positioned 687.0 23 -72.0 run function luigis_mansion:blocks/dust_no_sound
execute if data storage luigis_mansion:data furniture.loot positioned 702.0 22 -72.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #sealed_room_lamp Searched 1
data remove storage luigis_mansion:data furniture