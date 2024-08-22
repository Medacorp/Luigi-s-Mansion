tag @s add ignore_me
data modify storage luigis_mansion:data paths set from entity @s data.paths
execute if data entity @s data.paths unless data entity @s data.paths[0] run function luigis_mansion:entities/ghost/get_path_reference with entity @s data
tag @s remove ignore_me
$data modify entity @s data.path set from storage luigis_mansion:data paths[$(index)]
data remove storage luigis_mansion:data paths
scoreboard players set @s TargetTask 5
function luigis_mansion:entities/ghost/target_task/go_to_next_path_step