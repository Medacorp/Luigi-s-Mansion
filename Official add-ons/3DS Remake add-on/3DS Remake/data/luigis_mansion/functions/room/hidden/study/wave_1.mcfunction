execute positioned 702 24 -31 rotated -180 90 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/haunted_book
tag @e[tag=haunted_book] add enabled
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["study_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/silver_diamond
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["study_speedy_spirit"]} run data modify storage luigis_mansion:data entity.loot.name set value "study_speedy_spirit"
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["study_speedy_spirit"]} positioned 706 20 -33 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
data modify storage luigis_mansion:data entity set value {mansion:{namespace:"luigis_mansion",id:"hidden"},scan_message:{sender:"me",message:'{"type":"translatable","translate":"3ds_remake:message.neville.scan"}',plural_message:'{"type":"translatable","translate":"3ds_remake:message.neville.scan.more"}'}}
execute positioned 709.0 20 -41.0 rotated -55 0 run function luigis_mansion:spawn_entities/portrait_ghost/neville
scoreboard players set #study Wave 1