execute unless score #tea_room_lamp Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:34,tags:["drop_loot"]}
execute unless score #tea_room_lamp Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["tea_room_crystal_chandelier"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"tea_room_crystal_chandelier",contents:{luigis_mansion:{bill:15}}}
execute unless score #tea_room_lamp Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/d50_p15
execute unless data storage luigis_mansion:data furniture.loot positioned 643.0 25 -45.0 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 643.0 24 -45.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #tea_room_lamp Searched 1
data remove storage luigis_mansion:data furniture