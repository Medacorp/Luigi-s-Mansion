execute positioned 640 20 -45.0 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/blue_blaze
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["tea_room_speedy_spirit"]} positioned 641 20 -37 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/speedy_spirit
execute positioned 641 20 -37 as @e[tag=speedy_spirit,distance=..0.7] run function luigis_mansion:entities/speedy_spirit/give_money/bills
execute positioned 641 20 -37 as @e[tag=speedy_spirit,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"tea_room_speedy_spirit"}
scoreboard players set #tea_room Wave 100