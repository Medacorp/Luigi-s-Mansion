data modify storage luigis_mansion:data entity set value {scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.lydia.scan"}'}}
execute positioned 690 111 41 rotated 135 0 run function luigis_mansion:spawn_entities/portrait_ghost/lydia
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["master_bedroom_speedy_spirit"]} run function luigis_mansion:old_entities/speedy_spirit/give_money/red_ruby
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["master_bedroom_speedy_spirit"]} run data modify storage luigis_mansion:data entity.loot.name set value "master_bedroom_speedy_spirit"
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["master_bedroom_speedy_spirit"]} positioned 695 111 39 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
scoreboard players set #master_bedroom Wave 1