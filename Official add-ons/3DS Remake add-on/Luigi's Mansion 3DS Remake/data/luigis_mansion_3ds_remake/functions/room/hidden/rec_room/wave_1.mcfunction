execute positioned 644 11 -44 rotated -90 0 run function luigis_mansion:spawn_entities/portrait_ghost/biff_atlas
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["rec_room_speedy_spirit"]} positioned 639 12 -35 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
execute positioned 639 12 -35 as @e[tag=speedy_spirit,distance=..0.7] run function luigis_mansion:entities/speedy_spirit/give_money/red_ruby
execute positioned 639 12 -35 as @e[tag=speedy_spirit,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"red_room_speedy_spirit"}
scoreboard players set #rec_room Wave 1