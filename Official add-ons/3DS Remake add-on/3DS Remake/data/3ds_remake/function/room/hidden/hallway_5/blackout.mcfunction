data modify storage luigis_mansion:data entity set value {room:13,spawn:2b,no_hidden_move:1b}
execute positioned 682 14 -5 run function luigis_mansion:spawn_entities/ghost/ceiling_surprise
data modify storage luigis_mansion:data entity set value {room:13,spawn:2b,no_hidden_move:1b}
execute positioned 682 14 -2 run function luigis_mansion:spawn_entities/ghost/purple_bomber
scoreboard players set #hallway_5 Wave 100