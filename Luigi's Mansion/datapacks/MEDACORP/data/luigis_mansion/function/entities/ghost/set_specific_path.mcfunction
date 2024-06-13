$data modify entity @s data.path set from entity @s data.paths[$(index)]
scoreboard players set @s TargetTask 5
function luigis_mansion:entities/ghost/target_task/go_to_next_path_step