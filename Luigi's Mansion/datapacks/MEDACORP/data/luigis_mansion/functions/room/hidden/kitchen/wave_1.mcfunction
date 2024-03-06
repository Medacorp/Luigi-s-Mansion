tag @e[tag=haunted_frying_pan] add enabled
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["kitchen_speedy_spirit"]} run data modify storage luigis_mansion:data entity set value {loot:{name:"kitchen_speedy_spirit"},tags:["hiding_in_furniture"]}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["kitchen_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/silver_diamond
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["kitchen_speedy_spirit"]} positioned 700 11 -70 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
data modify storage luigis_mansion:data entity set value {tags:["hiding_in_furniture"]}
execute positioned 701 11 -55 run function luigis_mansion:spawn_entities/ghost/flash
scoreboard players set #kitchen Wave 1