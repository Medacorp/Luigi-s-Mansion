execute positioned 737 2 70 run function luigis_mansion:spawn_entities/ghost/empty_marker
execute positioned 743 2 62 run function luigis_mansion:spawn_entities/ghost/empty_marker
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["cellar_speedy_spirit"]} positioned 738 3 60 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
execute positioned 738 3 60 as @e[tag=speedy_spirit,distance=..0.7] run function luigis_mansion:entities/speedy_spirit/give_money/silver_diamond
execute positioned 738 3 60 as @e[tag=speedy_spirit,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"cellar_speedy_spirit"}
scoreboard players set #cellar Wave 1