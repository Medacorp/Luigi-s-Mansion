tag @e[scores={Room=4},tag=furniture,tag=door] add blockade
data modify storage luigis_mansion:data entity set value {room:4}
execute positioned 687 20 33.0 run function luigis_mansion:spawn_entities/ghost/blue_twirler
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["anteroom_speedy_spirit"]} run data modify storage luigis_mansion:data entity set value {room:4,no_hidden_move:1b,disappear_on_vanish:"anteroom_speedy_spirit",loot:{drop_at_0:{name:"anteroom_speedy_spirit"}},spawn:3b}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["anteroom_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/bills
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["anteroom_speedy_spirit"]} positioned 685 20 41.0 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
scoreboard players set #anteroom Wave 1