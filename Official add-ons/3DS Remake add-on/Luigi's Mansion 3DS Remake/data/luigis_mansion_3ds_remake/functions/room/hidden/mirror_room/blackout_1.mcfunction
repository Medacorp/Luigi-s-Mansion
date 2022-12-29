execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["mirror_room_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/red_ruby
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["mirror_room_speedy_spirit"]} run data modify storage luigis_mansion:data entity.loot.name set value "mirror_room_speedy_spirit"
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["mirror_room_speedy_spirit"]} positioned 740 11 -61 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/speedy_spirit
execute positioned 738 11 -48 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/mirror_ghost
execute positioned 738 11 -57 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/mirror_ghost
scoreboard players set #mirror_room Wave 100