tag @e[tag=haunted_frying_pan] add enabled
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{kitchen_speedy_spirit:1b} positioned 700 11 -70 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
execute positioned 701 11 -55 run function luigis_mansion:spawn_entities/ghost/flash
scoreboard players set #kitchen Wave 1