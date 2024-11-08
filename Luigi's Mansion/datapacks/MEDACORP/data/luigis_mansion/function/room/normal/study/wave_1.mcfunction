data modify storage luigis_mansion:data entity set value {room:8,tags:["enabled"]}
execute positioned 702 24 46 rotated -180 90 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/book
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["study_speedy_spirit"]} run data modify storage luigis_mansion:data entity set value {room:8,loot:{drop_at_0:{name:"study_speedy_spirit"}},spawn:3b}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["study_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/red_ruby
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["study_speedy_spirit"]} positioned 706 20 48 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
data modify storage luigis_mansion:data entity set value {room:8,scan_result:{namespace:"luigis_mansion",id:"scan/entity/neville"}}
execute positioned 709.0 20 57.0 rotated -125 0 run function luigis_mansion:spawn_entities/portrait_ghost/neville
scoreboard players set #study Wave 1