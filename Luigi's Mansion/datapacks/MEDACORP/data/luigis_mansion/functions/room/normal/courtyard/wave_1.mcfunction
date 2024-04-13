data modify storage luigis_mansion:data entity set value {room:30,no_hidden_move:1b}
execute positioned 649 105 3 run function luigis_mansion:spawn_entities/ghost/ceiling_surprise
data modify storage luigis_mansion:data entity set value {room:30,no_hidden_move:1b}
execute positioned 645 105 -10 run function luigis_mansion:spawn_entities/ghost/purple_bomber
scoreboard players set #courtyard Wave 1