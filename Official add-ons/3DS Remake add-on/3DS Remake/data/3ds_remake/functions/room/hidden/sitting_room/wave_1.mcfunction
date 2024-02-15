tag @e[scores={Room=69},tag=furniture,tag=door] add blockade
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["sitting_room_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/gold_bars
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["sitting_room_speedy_spirit"]} run data modify storage luigis_mansion:data entity.loot.name set value "sitting_room_speedy_spirit"
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["sitting_room_speedy_spirit"]} positioned 741 20 -24 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
scoreboard players set #sitting_room Wave 1