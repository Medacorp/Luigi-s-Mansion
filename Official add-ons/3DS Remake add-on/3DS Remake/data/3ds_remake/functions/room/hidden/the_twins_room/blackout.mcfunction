data modify storage luigis_mansion:data entity set value {room:49,spawn:2b}
execute positioned 741 20 44 run function luigis_mansion:spawn_entities/ghost/ghost_guy/red
data modify storage luigis_mansion:data entity set value {room:49,spawn:2b}
execute positioned 741 20 39 run function luigis_mansion:spawn_entities/ghost/grabbing_ghost
data modify storage luigis_mansion:data entity set value {room:49,spawn:2b}
execute positioned 746 20 38 run function luigis_mansion:spawn_entities/ghost/ghost_guy/red
data modify storage luigis_mansion:data entity set value {room:49,spawn:2b}
execute positioned 746 20 43 run function luigis_mansion:spawn_entities/ghost/grabbing_ghost
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["the_twins_room_speedy_spirit"]} run data modify storage luigis_mansion:data entity set value {room:49,loot:{name:"the_twins_room_speedy_spirit"},tags:["hiding_in_furniture"]}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["the_twins_room_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/green_emerald
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["the_twins_room_speedy_spirit"]} positioned 739 22 34 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
scoreboard players set #the_twins_room Wave 100