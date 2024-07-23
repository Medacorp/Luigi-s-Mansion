execute if score #kitchen_oven Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:27,tags:["drop_loot"]}
execute if score #kitchen_oven Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["kitchen_oven"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"kitchen_oven",contents:{luigis_mansion:{red_ruby:1}}}
execute if score #kitchen_oven Searched matches 1.. unless data storage luigis_mansion:data furniture.loot positioned 700 11 -59.0 run function luigis_mansion:blocks/dust
execute if score #kitchen_oven Searched matches 1.. if data storage luigis_mansion:data furniture.loot positioned 701 11 -59.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
execute if score #kitchen_oven Searched matches 1 run scoreboard players set #kitchen_oven Searched 2
data remove storage luigis_mansion:data furniture