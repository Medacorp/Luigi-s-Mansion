tag @e[scores={Room=69},tag=door,tag=frame] add blockade
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["sitting_room_speedy_spirit"]} positioned 741 20 -24 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
execute positioned 741 20 -24 as @e[tag=speedy_spirit,distance=..0.7] run function luigis_mansion:entities/speedy_spirit/give_money/gold_bars
execute positioned 741 20 -24 as @e[tag=speedy_spirit,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"sitting_room_speedy_spirit"}
scoreboard players set #sitting_room Wave 1