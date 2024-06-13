tag @e[tag=haunted_frying_pan] add enabled
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["kitchen_speedy_spirit"]} run data modify storage luigis_mansion:data entity set value {room:27,loot:{name:"kitchen_speedy_spirit"},spawn:3b}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["kitchen_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/blue_sapphire
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["kitchen_speedy_spirit"]} positioned 700 11 85 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
data modify storage luigis_mansion:data entity set value {room:27,spawn:3b}
execute positioned 701 11 70 run function luigis_mansion:spawn_entities/ghost/flash
scoreboard players set #kitchen Wave 1