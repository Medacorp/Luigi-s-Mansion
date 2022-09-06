execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["astral_hall_speedy_spirit"]} positioned 662 20 -89 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
execute positioned 662 20 -89 as @e[tag=speedy_spirit,distance=..0.7] run function luigis_mansion:entities/speedy_spirit/give_money/gold_bars
execute positioned 662 20 -89 as @e[tag=speedy_spirit,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"astral_hall_speedy_spirit"}
scoreboard players set #astral_hall Wave 1