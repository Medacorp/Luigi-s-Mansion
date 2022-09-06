execute positioned 685 12 38 run function luigis_mansion:spawn_entities/ghost/empty_marker
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["projection_room_speedy_spirit"]} positioned 676 11 33 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
execute positioned 676 11 33 as @e[tag=speedy_spirit,distance=..0.7] run function luigis_mansion:entities/speedy_spirit/give_money/blue_sapphire
execute positioned 676 11 33 as @e[tag=speedy_spirit,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"projection_room_speedy_spirit"}
scoreboard players set #projection_room Wave 1