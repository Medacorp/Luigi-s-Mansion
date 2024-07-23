$function $(namespace):room/$(id)/loot_chance_ghost
tag @s add dropped_loot_at_0
execute if entity @a[tag=killer,limit=1,scores={GhostCount=2..}] if data storage 3ds_remake:data current_state.trophy.easy{task_4:0b} run function 3ds_remake:selection_menu/gallery_trophy/complete/easy/task_4
