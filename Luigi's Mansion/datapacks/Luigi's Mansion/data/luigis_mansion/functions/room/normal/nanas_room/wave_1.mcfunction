execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["nanas_room_speedy_spirit"]} positioned 658 20 -23 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
execute positioned 658 20 -23 as @e[tag=speedy_spirit,distance=..0.7] run function luigis_mansion:entities/speedy_spirit/give_money/gold_bars
execute positioned 658 20 -23 as @e[tag=speedy_spirit,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"nanas_room_speedy_spirit"}
execute positioned 657 20 -10.0 rotated -60 0 run function luigis_mansion:spawn_entities/portrait_ghost/nana
execute positioned 659.7 21.5 -11.7 run function luigis_mansion:spawn_entities/ball/wool/yellow
execute positioned 659.3 21.5 -11.7 run function luigis_mansion:spawn_entities/ball/wool/yellow
execute positioned 659 21.5 -11.3 run function luigis_mansion:spawn_entities/ball/wool/blue
scoreboard players set #nanas_room Wave 1