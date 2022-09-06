tag @e[scores={Room=4},tag=door,tag=frame] add blockade
execute positioned 687 20 32.0 run function luigis_mansion:spawn_entities/ghost/blue_twirler
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["anteroom_speedy_spirit"]} positioned 685 21 40 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
execute positioned 785 21 40 as @e[tag=speedy_spirit,distance=..0.7] run function luigis_mansion:entities/speedy_spirit/give_money/bills
execute positioned 785 21 40 as @e[tag=speedy_spirit,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"anteroom_speedy_spirit"}
scoreboard players set #anteroom Wave 1