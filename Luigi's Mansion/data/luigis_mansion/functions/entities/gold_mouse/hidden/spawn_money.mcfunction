execute if entity @s[scores={Room=7}] run function luigis_mansion:entities/gold_mouse/spawn_money/blue_diamond
execute if entity @s[scores={Room=7}] run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {study_gold_mouse:1b}
execute if entity @s[scores={Room=10}] run function luigis_mansion:entities/gold_mouse/spawn_money/blue_diamond
execute if entity @s[scores={Room=10}] run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {main_hallway_gold_mouse:1b}
execute if entity @s[scores={Room=16}] run function luigis_mansion:entities/gold_mouse/spawn_money/blue_diamond
execute if entity @s[scores={Room=16}] run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {fortune_tellers_room_gold_mouse:1b}
execute if entity @s[scores={Room=22}] run function luigis_mansion:entities/gold_mouse/spawn_money/blue_diamond
execute if entity @s[scores={Room=22}] run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {dining_room_gold_mouse:1b}
execute if entity @s[scores={Room=23}] run function luigis_mansion:entities/gold_mouse/spawn_money/blue_diamond
execute if entity @s[scores={Room=23}] run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {kitchen_gold_mouse:1b}
execute if entity @s[scores={Room=30},tag=!cheese] run function luigis_mansion:entities/gold_mouse/spawn_money/blue_diamond
execute if entity @s[scores={Room=30},tag=!cheese] run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {tea_room_random_gold_mouse:1b}
execute if entity @s[scores={Room=30},tag=cheese] run function luigis_mansion:entities/gold_mouse/spawn_money/blue_diamond
execute if entity @s[scores={Room=30},tag=cheese] run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {tea_room_cheese_gold_mouse:1b}
execute if entity @s[scores={Room=31}] run function luigis_mansion:entities/gold_mouse/spawn_money/blue_diamond
execute if entity @s[scores={Room=31}] run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {hallway_gold_mouse:1b}
execute if entity @s[scores={Room=40}] run function luigis_mansion:entities/gold_mouse/spawn_money/blue_diamond
execute if entity @s[scores={Room=40}] run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {safari_room_gold_mouse:1b}
execute if entity @s[scores={Room=53}] run function luigis_mansion:entities/gold_mouse/spawn_money/blue_diamond
execute if entity @s[scores={Room=53}] run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {sealed_room_gold_mouse:1b}