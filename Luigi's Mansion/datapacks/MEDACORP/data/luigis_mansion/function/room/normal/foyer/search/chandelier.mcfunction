execute unless score #foyer_chandelier Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:1,tags:["drop_loot"]}
execute unless score #foyer_chandelier Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["foyer_inside_lantern_chandelier"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"foyer_inside_lantern_chandelier",contents:{luigis_mansion:{gold_coin:15,bill:15}}}
execute unless data storage luigis_mansion:data furniture.loot positioned 751.0 21 9.0 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 751.0 20 9.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #foyer_chandelier Searched 1
data remove storage luigis_mansion:data furniture