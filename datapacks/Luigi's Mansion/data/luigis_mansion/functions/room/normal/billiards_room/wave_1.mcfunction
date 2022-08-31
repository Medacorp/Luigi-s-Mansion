execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["billiards_room_speedy_spirit"]} positioned 686 11 66 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
execute positioned 686 11 66 as @e[tag=speedy_spirit,distance=..0.7] run function luigis_mansion:entities/speedy_spirit/give_money/blue_sapphire
execute positioned 686 11 66 as @e[tag=speedy_spirit,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"billiards_room_speedy_spirit"}
execute positioned 680 11 82 rotated -180 0 run function luigis_mansion:spawn_entities/portrait_ghost/slim_bankshot
scoreboard players set #billiards_room Wave 1