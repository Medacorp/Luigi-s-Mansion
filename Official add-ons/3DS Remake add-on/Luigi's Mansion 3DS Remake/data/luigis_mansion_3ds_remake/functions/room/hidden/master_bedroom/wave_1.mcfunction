execute positioned 690 111 41 rotated 135 0 run function luigis_mansion:spawn_entities/portrait_ghost/lydia
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["master_bedroom_speedy_spirit"]} positioned 695 111 39 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
execute positioned 695 111 39 as @e[tag=speedy_spirit,distance=..0.7] run function luigis_mansion:entities/speedy_spirit/give_money/red_ruby
execute positioned 695 111 39 as @e[tag=speedy_spirit,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"master_bedroom_speedy_spirit"}
scoreboard players set #master_bedroom Wave 1