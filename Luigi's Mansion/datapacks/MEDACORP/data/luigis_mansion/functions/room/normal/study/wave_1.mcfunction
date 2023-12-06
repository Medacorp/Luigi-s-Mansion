execute positioned 702 24 46 rotated -180 90 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/haunted_book
tag @e[tag=haunted_book] add enabled
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["study_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/red_ruby
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["study_speedy_spirit"]} run data modify storage luigis_mansion:data entity.loot.name set value "study_speedy_spirit"
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["study_speedy_spirit"]} positioned 706 20 48 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
data modify storage luigis_mansion:data entity set value {scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.neville.scan"}',plural_message:'{"type":"translatable","translate":"luigis_mansion:message.neville.scan.more"}'}}
execute positioned 709.0 20 57.0 rotated -125 0 run function luigis_mansion:spawn_entities/portrait_ghost/neville
scoreboard players set #study Wave 1