tag @e[tag=haunted_frying_pan] add enabled
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["kitchen_speedy_spirit"]} positioned 700 11 85 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
execute positioned 700 11 85 as @e[tag=speedy_spirit,distance=..0.7] run function luigis_mansion:entities/speedy_spirit/give_money/blue_sapphire
execute positioned 700 11 85 as @e[tag=speedy_spirit,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"kitchen_speedy_spirit"}
execute positioned 701 11 70 run function luigis_mansion:spawn_entities/ghost/flash
scoreboard players set #kitchen Wave 1