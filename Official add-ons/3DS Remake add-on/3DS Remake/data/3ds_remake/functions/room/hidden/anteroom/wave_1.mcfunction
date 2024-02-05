tag @e[scores={Room=4},tag=furniture,tag=door] add blockade
execute positioned 687 20 32.0 run function luigis_mansion:spawn_entities/ghost/blue_twirler
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["anteroom_speedy_spirit"]} run function luigis_mansion:old_entities/speedy_spirit/give_money/bills
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["anteroom_speedy_spirit"]} run data modify storage luigis_mansion:data entity.loot.name set value "anteroom_speedy_spirit"
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["anteroom_speedy_spirit"]} positioned 685 21 40 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
scoreboard players set #anteroom Wave 1