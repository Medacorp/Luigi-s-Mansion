execute if entity @s[scores={Room=0..}] run function luigis_mansion:room/loot_chance_ghost_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
execute if entity @s[scores={Room=-2}] if data storage luigis_mansion:data dialogs[{room:-2}] run function luigis_mansion:room/loot_chance_ghost_training_room with storage luigis_mansion:data dialogs[{room:-2}].name
execute if entity @s[scores={Room=..-1}] unless data storage luigis_mansion:data dialogs[{room:-2}] run function luigis_mansion:room/loot_chance_ghost/works_in_lab
tag @s add dropped_loot_at_0
execute if entity @a[tag=killer,limit=1,scores={GhostCount=2..}] if data storage 3ds_remake:data current_state.trophy.easy{task_4:0b} run function 3ds_remake:selection_menu/gallery_trophy/complete/easy/task_4
