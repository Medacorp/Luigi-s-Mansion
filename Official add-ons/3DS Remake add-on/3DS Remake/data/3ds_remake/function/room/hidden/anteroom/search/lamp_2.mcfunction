execute unless score #anteroom_lamp_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:4,tags:["drop_loot"]}
execute unless score #anteroom_lamp_2 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["anteroom_orblight_chandelier_2"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"anteroom_orblight_chandelier_2",contents:{luigis_mansion:{bill:10}}}
execute unless score #anteroom_lamp_2 Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/d50_p15
execute unless data storage luigis_mansion:data furniture.loot positioned 689 24 29 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 689 23 296 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #anteroom_lamp_2 Searched 1
data remove storage luigis_mansion:data furniture