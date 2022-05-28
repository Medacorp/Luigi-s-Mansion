execute if entity @s[scores={Room=8}] run function luigis_mansion:entities/gold_mouse/spawn_money/silver_diamond
execute if entity @s[scores={Room=8}] run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {study_gold_mouse:1b}
execute if entity @s[scores={Room=11..14}] run function luigis_mansion:entities/gold_mouse/spawn_money/silver_diamond
execute if entity @s[scores={Room=11..14}] run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {hallway_3_hallway_6_gold_mouse:1b}
execute if entity @s[scores={Room=20}] run function luigis_mansion:entities/gold_mouse/spawn_money/silver_diamond
execute if entity @s[scores={Room=20}] run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {fortune_tellers_room_gold_mouse:1b}
execute if entity @s[scores={Room=26}] run function luigis_mansion:entities/gold_mouse/spawn_money/silver_diamond
execute if entity @s[scores={Room=26}] run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {dining_room_gold_mouse:1b}
execute if entity @s[scores={Room=27}] run function luigis_mansion:entities/gold_mouse/spawn_money/silver_diamond
execute if entity @s[scores={Room=27}] run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {kitchen_gold_mouse:1b}
execute if entity @s[scores={Room=34},tag=!cheese] run function luigis_mansion:entities/gold_mouse/spawn_money/silver_diamond
execute if entity @s[scores={Room=34},tag=!cheese] run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {tea_room_random_gold_mouse:1b}
execute if entity @s[scores={Room=34},tag=cheese] run function luigis_mansion:entities/gold_mouse/spawn_money/silver_diamond
execute if entity @s[scores={Room=34},tag=cheese] run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {tea_room_cheese_gold_mouse:1b}
execute if entity @s[scores={Room=35..41}] run function luigis_mansion:entities/gold_mouse/spawn_money/silver_diamond
execute if entity @s[scores={Room=35..41}] run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {hallway_9_hallway_15_gold_mouse:1b}
execute if entity @s[scores={Room=50}] run function luigis_mansion:entities/gold_mouse/spawn_money/silver_diamond
execute if entity @s[scores={Room=50}] run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {safari_room_gold_mouse:1b}
execute if entity @s[scores={Room=66}] run function luigis_mansion:entities/gold_mouse/spawn_money/silver_diamond
execute if entity @s[scores={Room=66}] run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {sealed_room_gold_mouse:1b}