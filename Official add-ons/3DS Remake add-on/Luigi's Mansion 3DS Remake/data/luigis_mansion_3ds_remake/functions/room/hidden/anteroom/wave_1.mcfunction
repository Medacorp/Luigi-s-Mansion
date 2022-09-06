tag @e[scores={Room=4},tag=door,tag=frame] add blockade
execute positioned 687 20 32.0 run function luigis_mansion:spawn_entities/ghost/blue_twirler
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{anteroom_speedy_spirit:1b} positioned 685 21 40 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
scoreboard players set #anteroom Wave 1