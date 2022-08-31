execute positioned 679 20 -58 run function luigis_mansion:spawn_entities/ghost/blue_twirler
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["wardrobe_room_speedy_spirit"]} positioned 679 20 -43 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
execute positioned 679 20 -43 as @e[tag=speedy_spirit,distance=..0.7] run function luigis_mansion:entities/speedy_spirit/give_money/silver_diamond
execute positioned 679 20 -43 as @e[tag=speedy_spirit,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"wardrobe_room_speedy_spirit"}
scoreboard players set #wardrobe_room Wave 1