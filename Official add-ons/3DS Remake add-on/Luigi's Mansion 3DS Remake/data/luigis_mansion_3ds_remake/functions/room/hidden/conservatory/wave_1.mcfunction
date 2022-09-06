execute positioned 660.2 10.5 -23.2 rotated 45 0 run function luigis_mansion:spawn_entities/portrait_ghost/melody_pianissima
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["conservatory_speedy_spirit"]} positioned 660 11 -18 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
execute positioned 660 11 -18 as @e[tag=speedy_spirit,distance=..0.7] run function luigis_mansion:entities/speedy_spirit/give_money/blue_sapphire
execute positioned 660 11 -18 as @e[tag=speedy_spirit,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"conservatory_speedy_spirit"}
scoreboard players set #conservatory Wave 1